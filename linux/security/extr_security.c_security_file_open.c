
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int MAY_OPEN ;
 int call_int_hook (int ,int ,struct file*) ;
 int file_open ;
 int fsnotify_perm (struct file*,int ) ;

int security_file_open(struct file *file)
{
 int ret;

 ret = call_int_hook(file_open, 0, file);
 if (ret)
  return ret;

 return fsnotify_perm(file, MAY_OPEN);
}
