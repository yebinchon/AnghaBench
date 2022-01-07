
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_mode; int f_pos; } ;
typedef int loff_t ;


 int FMODE_READ ;
 int seq_lseek (struct file*,int,int) ;

loff_t tracing_lseek(struct file *file, loff_t offset, int whence)
{
 int ret;

 if (file->f_mode & FMODE_READ)
  ret = seq_lseek(file, offset, whence);
 else
  file->f_pos = ret = 0;

 return ret;
}
