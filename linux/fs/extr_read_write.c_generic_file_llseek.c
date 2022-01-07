
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_4__ {int s_maxbytes; } ;
struct TYPE_3__ {struct inode* host; } ;


 int generic_file_llseek_size (struct file*,int ,int,int ,int ) ;
 int i_size_read (struct inode*) ;

loff_t generic_file_llseek(struct file *file, loff_t offset, int whence)
{
 struct inode *inode = file->f_mapping->host;

 return generic_file_llseek_size(file, offset, whence,
     inode->i_sb->s_maxbytes,
     i_size_read(inode));
}
