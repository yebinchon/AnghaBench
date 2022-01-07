
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int pr_debug (char*,struct dentry*,int) ;
 int vfs_unlink (struct inode*,struct dentry*,int *) ;

__attribute__((used)) static inline int ovl_do_unlink(struct inode *dir, struct dentry *dentry)
{
 int err = vfs_unlink(dir, dentry, ((void*)0));

 pr_debug("unlink(%pd2) = %i\n", dentry, err);
 return err;
}
