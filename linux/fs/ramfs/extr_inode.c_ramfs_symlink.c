
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; int i_mtime; int i_sb; } ;
struct dentry {int dummy; } ;


 int ENOSPC ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int current_time (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 int iput (struct inode*) ;
 int page_symlink (struct inode*,char const*,int) ;
 struct inode* ramfs_get_inode (int ,struct inode*,int,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int ramfs_symlink(struct inode * dir, struct dentry *dentry, const char * symname)
{
 struct inode *inode;
 int error = -ENOSPC;

 inode = ramfs_get_inode(dir->i_sb, dir, S_IFLNK|S_IRWXUGO, 0);
 if (inode) {
  int l = strlen(symname)+1;
  error = page_symlink(inode, symname, l);
  if (!error) {
   d_instantiate(dentry, inode);
   dget(dentry);
   dir->i_mtime = dir->i_ctime = current_time(dir);
  } else
   iput(inode);
 }
 return error;
}
