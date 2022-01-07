
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int pr_debug (char*,struct dentry*,char const*,int) ;
 int vfs_removexattr (struct dentry*,char const*) ;

__attribute__((used)) static inline int ovl_do_removexattr(struct dentry *dentry, const char *name)
{
 int err = vfs_removexattr(dentry, name);
 pr_debug("removexattr(%pd2, \"%s\") = %i\n", dentry, name, err);
 return err;
}
