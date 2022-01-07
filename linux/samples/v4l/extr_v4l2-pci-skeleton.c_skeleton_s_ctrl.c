
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; } ;


 int EINVAL ;





__attribute__((used)) static int skeleton_s_ctrl(struct v4l2_ctrl *ctrl)
{



 switch (ctrl->id) {
 case 131:

  break;
 case 130:

  break;
 case 128:

  break;
 case 129:

  break;
 default:
  return -EINVAL;
 }
 return 0;
}
