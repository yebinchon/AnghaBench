
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_enum_dv_timings {int dummy; } ;
struct skeleton {scalar_t__ input; } ;
struct file {int dummy; } ;


 int ENODATA ;
 int skel_timings_cap ;
 int v4l2_enum_dv_timings_cap (struct v4l2_enum_dv_timings*,int *,int *,int *) ;
 struct skeleton* video_drvdata (struct file*) ;

__attribute__((used)) static int skeleton_enum_dv_timings(struct file *file, void *_fh,
        struct v4l2_enum_dv_timings *timings)
{
 struct skeleton *skel = video_drvdata(file);


 if (skel->input == 0)
  return -ENODATA;

 return v4l2_enum_dv_timings_cap(timings, &skel_timings_cap,
     ((void*)0), ((void*)0));
}
