
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skeleton {unsigned int input; } ;
struct file {int dummy; } ;


 struct skeleton* video_drvdata (struct file*) ;

__attribute__((used)) static int skeleton_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct skeleton *skel = video_drvdata(file);

 *i = skel->input;
 return 0;
}
