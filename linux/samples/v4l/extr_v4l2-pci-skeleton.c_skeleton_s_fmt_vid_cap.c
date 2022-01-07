
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct skeleton {int format; int queue; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int skeleton_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct skeleton* video_drvdata (struct file*) ;

__attribute__((used)) static int skeleton_s_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct skeleton *skel = video_drvdata(file);
 int ret;

 ret = skeleton_try_fmt_vid_cap(file, priv, f);
 if (ret)
  return ret;





 if (vb2_is_busy(&skel->queue))
  return -EBUSY;


 skel->format = f->fmt.pix;
 return 0;
}
