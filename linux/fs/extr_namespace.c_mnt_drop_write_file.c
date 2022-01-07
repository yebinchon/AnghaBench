
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int i_sb; } ;


 int __mnt_drop_write_file (struct file*) ;
 TYPE_1__* file_inode (struct file*) ;
 int sb_end_write (int ) ;

void mnt_drop_write_file(struct file *file)
{
 __mnt_drop_write_file(file);
 sb_end_write(file_inode(file)->i_sb);
}
