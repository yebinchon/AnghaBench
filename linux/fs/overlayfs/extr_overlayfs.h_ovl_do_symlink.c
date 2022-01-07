
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int pr_debug (char*,char const*,struct dentry*,int) ;
 int vfs_symlink (struct inode*,struct dentry*,char const*) ;

__attribute__((used)) static inline int ovl_do_symlink(struct inode *dir, struct dentry *dentry,
     const char *oldname)
{
 int err = vfs_symlink(dir, dentry, oldname);

 pr_debug("symlink(\"%s\", %pd2) = %i\n", oldname, dentry, err);
 return err;
}
