
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct file {int * f_op; } ;
struct TYPE_2__ {int i_mode; } ;


 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 TYPE_1__* file_inode (struct file*) ;
 int io_uring_fops ;

__attribute__((used)) static bool io_file_supports_async(struct file *file)
{
 umode_t mode = file_inode(file)->i_mode;

 if (S_ISBLK(mode) || S_ISCHR(mode))
  return 1;
 if (S_ISREG(mode) && file->f_op != &io_uring_fops)
  return 1;

 return 0;
}
