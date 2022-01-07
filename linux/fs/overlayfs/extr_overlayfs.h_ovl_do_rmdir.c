
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int pr_debug (char*,struct dentry*,int) ;
 int vfs_rmdir (struct inode*,struct dentry*) ;

__attribute__((used)) static inline int ovl_do_rmdir(struct inode *dir, struct dentry *dentry)
{
 int err = vfs_rmdir(dir, dentry);

 pr_debug("rmdir(%pd2) = %i\n", dentry, err);
 return err;
}
