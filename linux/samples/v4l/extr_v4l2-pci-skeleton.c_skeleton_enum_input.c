
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {int index; int capabilities; int name; scalar_t__ std; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ SKEL_TVNORMS ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_IN_CAP_DV_TIMINGS ;
 int V4L2_IN_CAP_STD ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int skeleton_enum_input(struct file *file, void *priv,
          struct v4l2_input *i)
{
 if (i->index > 1)
  return -EINVAL;

 i->type = V4L2_INPUT_TYPE_CAMERA;
 if (i->index == 0) {
  i->std = SKEL_TVNORMS;
  strlcpy(i->name, "S-Video", sizeof(i->name));
  i->capabilities = V4L2_IN_CAP_STD;
 } else {
  i->std = 0;
  strlcpy(i->name, "HDMI", sizeof(i->name));
  i->capabilities = V4L2_IN_CAP_DV_TIMINGS;
 }
 return 0;
}
