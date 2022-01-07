
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v4l2_std_id ;
struct skeleton {scalar_t__ std; int format; int queue; scalar_t__ input; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int ENODATA ;
 int skeleton_fill_pix_format (struct skeleton*,int *) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct skeleton* video_drvdata (struct file*) ;

__attribute__((used)) static int skeleton_s_std(struct file *file, void *priv, v4l2_std_id std)
{
 struct skeleton *skel = video_drvdata(file);


 if (skel->input)
  return -ENODATA;






 if (std == skel->std)
  return 0;





 if (vb2_is_busy(&skel->queue))
  return -EBUSY;



 skel->std = std;


 skeleton_fill_pix_format(skel, &skel->format);
 return 0;
}
