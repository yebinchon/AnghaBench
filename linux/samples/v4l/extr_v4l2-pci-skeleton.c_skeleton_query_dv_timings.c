
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_dv_timings {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct skeleton {scalar_t__ input; TYPE_1__ v4l2_dev; } ;
struct file {int dummy; } ;


 int ENODATA ;
 int ENOLCK ;
 int ENOLINK ;
 int ERANGE ;
 scalar_t__ cannot_lock_to_signal ;
 int detect_timings () ;
 scalar_t__ no_signal ;
 scalar_t__ signal_out_of_range_of_capabilities ;
 int v4l2_print_dv_timings (int ,char*,struct v4l2_dv_timings*,int) ;
 struct skeleton* video_drvdata (struct file*) ;

__attribute__((used)) static int skeleton_query_dv_timings(struct file *file, void *_fh,
         struct v4l2_dv_timings *timings)
{
 struct skeleton *skel = video_drvdata(file);


 if (skel->input == 0)
  return -ENODATA;
 return 0;
}
