
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dv_timings_cap {int dummy; } ;
struct skeleton {scalar_t__ input; } ;
struct file {int dummy; } ;


 int ENODATA ;
 struct v4l2_dv_timings_cap skel_timings_cap ;
 struct skeleton* video_drvdata (struct file*) ;

__attribute__((used)) static int skeleton_dv_timings_cap(struct file *file, void *fh,
       struct v4l2_dv_timings_cap *cap)
{
 struct skeleton *skel = video_drvdata(file);


 if (skel->input == 0)
  return -ENODATA;
 *cap = skel_timings_cap;
 return 0;
}
