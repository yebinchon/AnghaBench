
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int pr_debug (char*,struct dentry*,int) ;
 int vfs_whiteout (struct inode*,struct dentry*) ;

__attribute__((used)) static inline int ovl_do_whiteout(struct inode *dir, struct dentry *dentry)
{
 int err = vfs_whiteout(dir, dentry);
 pr_debug("whiteout(%pd2) = %i\n", dentry, err);
 return err;
}
