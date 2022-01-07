
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format {scalar_t__ pixelformat; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct skeleton {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_PIX_FMT_YUYV ;
 int skeleton_fill_pix_format (struct skeleton*,struct v4l2_pix_format*) ;
 struct skeleton* video_drvdata (struct file*) ;

__attribute__((used)) static int skeleton_try_fmt_vid_cap(struct file *file, void *priv,
        struct v4l2_format *f)
{
 struct skeleton *skel = video_drvdata(file);
 struct v4l2_pix_format *pix = &f->fmt.pix;







 if (pix->pixelformat != V4L2_PIX_FMT_YUYV)
  return -EINVAL;
 skeleton_fill_pix_format(skel, pix);
 return 0;
}
