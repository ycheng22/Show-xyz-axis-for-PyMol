
%set origin point to (-10,-10,-10)

x=1:50;
a_axis = zeros(length(x),3);
a_axis(:,1) = x';
b_axis = zeros(length(x),3);
b_axis(:,2) = x';
c_axis = zeros(length(x),3);
c_axis(:,3) = x';
abc_axis=[a_axis; b_axis; c_axis];
abc_axis=abc_axis-10;

fl_ID_name="xyz_move.pdb";
fl_ID=fopen(fl_ID_name,'w');
for m=1:length(abc_axis)
    x=abc_axis(m,1);
    y=abc_axis(m,2);
    z=abc_axis(m,3);
    fprintf(fl_ID,'%4s%7d%3s                %8.3f%8.3f%8.3f%6.2f%6.2f\n',... %%%16 spaces
                'ATOM',m,'  H',x,y,z,1.0,0.05);
end
