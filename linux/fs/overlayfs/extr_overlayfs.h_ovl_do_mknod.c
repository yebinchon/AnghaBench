
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int pr_debug (char*,struct dentry*,int ,int ,int) ;
 int vfs_mknod (struct inode*,struct dentry*,int ,int ) ;

__attribute__((used)) static inline int ovl_do_mknod(struct inode *dir, struct dentry *dentry,
          umode_t mode, dev_t dev)
{
 int err = vfs_mknod(dir, dentry, mode, dev);

 pr_debug("mknod(%pd2, 0%o, 0%o) = %i\n", dentry, mode, dev, err);
 return err;
}
