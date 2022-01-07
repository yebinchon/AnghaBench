
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dv_timings {int dummy; } ;
struct skeleton {scalar_t__ input; struct v4l2_dv_timings timings; } ;
struct file {int dummy; } ;


 int ENODATA ;
 struct skeleton* video_drvdata (struct file*) ;

__attribute__((used)) static int skeleton_g_dv_timings(struct file *file, void *_fh,
     struct v4l2_dv_timings *timings)
{
 struct skeleton *skel = video_drvdata(file);


 if (skel->input == 0)
  return -ENODATA;

 *timings = skel->timings;
 return 0;
}
