
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_NOSEC (struct inode*) ;
 int S_ISREG (int ) ;
 int __remove_privs (struct dentry*,int) ;
 int dentry_needs_remove_privs (struct dentry*) ;
 struct dentry* file_dentry (struct file*) ;
 struct inode* file_inode (struct file*) ;
 int inode_has_no_xattr (struct inode*) ;

int file_remove_privs(struct file *file)
{
 struct dentry *dentry = file_dentry(file);
 struct inode *inode = file_inode(file);
 int kill;
 int error = 0;







 if (IS_NOSEC(inode) || !S_ISREG(inode->i_mode))
  return 0;

 kill = dentry_needs_remove_privs(dentry);
 if (kill < 0)
  return kill;
 if (kill)
  error = __remove_privs(dentry, kill);
 if (!error)
  inode_has_no_xattr(inode);

 return error;
}
