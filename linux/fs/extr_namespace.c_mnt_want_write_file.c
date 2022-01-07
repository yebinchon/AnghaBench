
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int i_sb; } ;


 int __mnt_want_write_file (struct file*) ;
 TYPE_1__* file_inode (struct file*) ;
 int sb_end_write (int ) ;
 int sb_start_write (int ) ;

int mnt_want_write_file(struct file *file)
{
 int ret;

 sb_start_write(file_inode(file)->i_sb);
 ret = __mnt_want_write_file(file);
 if (ret)
  sb_end_write(file_inode(file)->i_sb);
 return ret;
}
