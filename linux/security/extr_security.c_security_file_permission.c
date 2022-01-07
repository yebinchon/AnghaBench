
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int call_int_hook (int ,int ,struct file*,int) ;
 int file_permission ;
 int fsnotify_perm (struct file*,int) ;

int security_file_permission(struct file *file, int mask)
{
 int ret;

 ret = call_int_hook(file_permission, 0, file, mask);
 if (ret)
  return ret;

 return fsnotify_perm(file, mask);
}
