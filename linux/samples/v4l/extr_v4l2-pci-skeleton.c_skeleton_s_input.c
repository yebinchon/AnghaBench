
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tvnorms; } ;
struct skeleton {unsigned int input; int format; TYPE_1__ vdev; int queue; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int SKEL_TVNORMS ;
 int skeleton_fill_pix_format (struct skeleton*,int *) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct skeleton* video_drvdata (struct file*) ;

__attribute__((used)) static int skeleton_s_input(struct file *file, void *priv, unsigned int i)
{
 struct skeleton *skel = video_drvdata(file);

 if (i > 1)
  return -EINVAL;





 if (vb2_is_busy(&skel->queue))
  return -EBUSY;

 skel->input = i;





 skel->vdev.tvnorms = i ? 0 : SKEL_TVNORMS;


 skeleton_fill_pix_format(skel, &skel->format);
 return 0;
}
