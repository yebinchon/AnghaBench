
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; int i_atime; int i_mtime; int i_ctime; } ;
struct dentry {int dummy; } ;


 scalar_t__ DIRENT_SIZE ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int drop_nlink (struct inode*) ;

__attribute__((used)) static int mqueue_unlink(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);

 dir->i_ctime = dir->i_mtime = dir->i_atime = current_time(dir);
 dir->i_size -= DIRENT_SIZE;
 drop_nlink(inode);
 dput(dentry);
 return 0;
}
