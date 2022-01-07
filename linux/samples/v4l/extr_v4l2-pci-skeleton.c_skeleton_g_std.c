
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct skeleton {int std; scalar_t__ input; } ;
struct file {int dummy; } ;


 int ENODATA ;
 struct skeleton* video_drvdata (struct file*) ;

__attribute__((used)) static int skeleton_g_std(struct file *file, void *priv, v4l2_std_id *std)
{
 struct skeleton *skel = video_drvdata(file);


 if (skel->input)
  return -ENODATA;

 *std = skel->std;
 return 0;
}
