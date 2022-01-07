
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_mode; } ;


 int FMODE_NOCMTIME ;
 int file_remove_privs (struct file*) ;
 int file_update_time (struct file*) ;
 scalar_t__ unlikely (int) ;

int file_modified(struct file *file)
{
 int err;





 err = file_remove_privs(file);
 if (err)
  return err;

 if (unlikely(file->f_mode & FMODE_NOCMTIME))
  return 0;

 return file_update_time(file);
}
