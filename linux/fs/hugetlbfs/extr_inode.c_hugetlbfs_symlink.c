
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mtime; int i_ctime; int i_sb; } ;
struct dentry {int dummy; } ;


 int ENOSPC ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int current_time (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 struct inode* hugetlbfs_get_inode (int ,struct inode*,int,int ) ;
 int iput (struct inode*) ;
 int page_symlink (struct inode*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int hugetlbfs_symlink(struct inode *dir,
   struct dentry *dentry, const char *symname)
{
 struct inode *inode;
 int error = -ENOSPC;

 inode = hugetlbfs_get_inode(dir->i_sb, dir, S_IFLNK|S_IRWXUGO, 0);
 if (inode) {
  int l = strlen(symname)+1;
  error = page_symlink(inode, symname, l);
  if (!error) {
   d_instantiate(dentry, inode);
   dget(dentry);
  } else
   iput(inode);
 }
 dir->i_ctime = dir->i_mtime = current_time(dir);

 return error;
}
