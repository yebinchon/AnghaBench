
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format {int width; int height; int bytesperline; int sizeimage; scalar_t__ priv; int colorspace; int field; int pixelformat; } ;
struct TYPE_3__ {int width; int height; scalar_t__ interlaced; } ;
struct TYPE_4__ {TYPE_1__ bt; } ;
struct skeleton {scalar_t__ input; int std; TYPE_2__ timings; } ;


 int V4L2_COLORSPACE_REC709 ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_ALTERNATE ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_YUYV ;
 int V4L2_STD_525_60 ;

__attribute__((used)) static void skeleton_fill_pix_format(struct skeleton *skel,
         struct v4l2_pix_format *pix)
{
 pix->pixelformat = V4L2_PIX_FMT_YUYV;
 if (skel->input == 0) {

  pix->width = 720;
  pix->height = (skel->std & V4L2_STD_525_60) ? 480 : 576;
  pix->field = V4L2_FIELD_INTERLACED;
  pix->colorspace = V4L2_COLORSPACE_SMPTE170M;
 } else {

  pix->width = skel->timings.bt.width;
  pix->height = skel->timings.bt.height;
  if (skel->timings.bt.interlaced) {
   pix->field = V4L2_FIELD_ALTERNATE;
   pix->height /= 2;
  } else {
   pix->field = V4L2_FIELD_NONE;
  }
  pix->colorspace = V4L2_COLORSPACE_REC709;
 }





 pix->bytesperline = pix->width * 2;
 pix->sizeimage = pix->bytesperline * pix->height;
 pix->priv = 0;
}
