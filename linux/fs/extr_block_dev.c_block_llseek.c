
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;


 struct inode* bdev_file_inode (struct file*) ;
 int fixed_size_llseek (struct file*,int ,int,int ) ;
 int i_size_read (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;

__attribute__((used)) static loff_t block_llseek(struct file *file, loff_t offset, int whence)
{
 struct inode *bd_inode = bdev_file_inode(file);
 loff_t retval;

 inode_lock(bd_inode);
 retval = fixed_size_llseek(file, offset, whence, i_size_read(bd_inode));
 inode_unlock(bd_inode);
 return retval;
}
