
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {int fsn_fa; } ;
struct file {struct fsnotify_group* private_data; } ;


 int EIO ;
 scalar_t__ fasync_helper (int,struct file*,int,int *) ;

int fsnotify_fasync(int fd, struct file *file, int on)
{
 struct fsnotify_group *group = file->private_data;

 return fasync_helper(fd, file, on, &group->fsn_fa) >= 0 ? 0 : -EIO;
}
