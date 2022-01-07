
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {unsigned long f_flags; int f_path; } ;


 unsigned int F_SETFL ;
 unsigned long O_APPEND ;
 unsigned long O_WRONLY ;
 int tomoyo_check_open_permission (int ,int *,unsigned long) ;
 int tomoyo_domain () ;

__attribute__((used)) static int tomoyo_file_fcntl(struct file *file, unsigned int cmd,
        unsigned long arg)
{
 if (!(cmd == F_SETFL && ((arg ^ file->f_flags) & O_APPEND)))
  return 0;
 return tomoyo_check_open_permission(tomoyo_domain(), &file->f_path,
         O_WRONLY | (arg & O_APPEND));
}
