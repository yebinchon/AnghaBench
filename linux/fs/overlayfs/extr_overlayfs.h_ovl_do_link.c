
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int pr_debug (char*,struct dentry*,struct dentry*,int) ;
 int vfs_link (struct dentry*,struct inode*,struct dentry*,int *) ;

__attribute__((used)) static inline int ovl_do_link(struct dentry *old_dentry, struct inode *dir,
         struct dentry *new_dentry)
{
 int err = vfs_link(old_dentry, dir, new_dentry, ((void*)0));

 pr_debug("link(%pd2, %pd2) = %i\n", old_dentry, new_dentry, err);
 return err;
}
