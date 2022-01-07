
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int pr_debug (char*,struct dentry*,int ,int) ;
 int vfs_create (struct inode*,struct dentry*,int ,int) ;

__attribute__((used)) static inline int ovl_do_create(struct inode *dir, struct dentry *dentry,
    umode_t mode)
{
 int err = vfs_create(dir, dentry, mode, 1);

 pr_debug("create(%pd2, 0%o) = %i\n", dentry, mode, err);
 return err;
}
