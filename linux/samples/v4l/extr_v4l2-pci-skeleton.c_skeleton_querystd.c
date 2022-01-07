
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct skeleton {scalar_t__ input; } ;
struct file {int dummy; } ;


 int ENODATA ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_625_50 ;
 int get_signal_info () ;
 scalar_t__ no_signal ;
 scalar_t__ signal_has_525_lines ;
 struct skeleton* video_drvdata (struct file*) ;

__attribute__((used)) static int skeleton_querystd(struct file *file, void *priv, v4l2_std_id *std)
{
 struct skeleton *skel = video_drvdata(file);


 if (skel->input)
  return -ENODATA;
 return 0;
}
