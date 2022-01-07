
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dv_timings {int dummy; } ;
struct skeleton {scalar_t__ input; int format; struct v4l2_dv_timings timings; int queue; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODATA ;
 int skel_timings_cap ;
 int skeleton_fill_pix_format (struct skeleton*,int *) ;
 int v4l2_find_dv_timings_cap (struct v4l2_dv_timings*,int *,int ,int *,int *) ;
 scalar_t__ v4l2_match_dv_timings (struct v4l2_dv_timings*,struct v4l2_dv_timings*,int ,int) ;
 int v4l2_valid_dv_timings (struct v4l2_dv_timings*,int *,int *,int *) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct skeleton* video_drvdata (struct file*) ;

__attribute__((used)) static int skeleton_s_dv_timings(struct file *file, void *_fh,
     struct v4l2_dv_timings *timings)
{
 struct skeleton *skel = video_drvdata(file);


 if (skel->input == 0)
  return -ENODATA;


 if (!v4l2_valid_dv_timings(timings, &skel_timings_cap, ((void*)0), ((void*)0)))
  return -EINVAL;


 if (!v4l2_find_dv_timings_cap(timings, &skel_timings_cap,
          0, ((void*)0), ((void*)0)))
  return -EINVAL;


 if (v4l2_match_dv_timings(timings, &skel->timings, 0, 0))
  return 0;





 if (vb2_is_busy(&skel->queue))
  return -EBUSY;




 skel->timings = *timings;


 skeleton_fill_pix_format(skel, &skel->format);
 return 0;
}
