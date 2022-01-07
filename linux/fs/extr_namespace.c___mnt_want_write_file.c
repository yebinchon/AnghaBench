
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mnt; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;


 int FMODE_WRITER ;
 int __mnt_want_write (int ) ;
 int mnt_clone_write (int ) ;

int __mnt_want_write_file(struct file *file)
{
 if (!(file->f_mode & FMODE_WRITER))
  return __mnt_want_write(file->f_path.mnt);
 else
  return mnt_clone_write(file->f_path.mnt);
}
