
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct file {int dummy; } ;


 int hpfs_lock (int ) ;
 int hpfs_unlock (int ) ;
 int hpfs_write_if_changed (struct inode*) ;

__attribute__((used)) static int hpfs_file_release(struct inode *inode, struct file *file)
{
 hpfs_lock(inode->i_sb);
 hpfs_write_if_changed(inode);
 hpfs_unlock(inode->i_sb);
 return 0;
}
