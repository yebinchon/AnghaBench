
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {int dummy; } ;


 int PTR_ERR_OR_ZERO (struct dentry*) ;
 int pr_debug (char*,struct dentry*,int ,int) ;
 struct dentry* vfs_tmpfile (struct dentry*,int ,int ) ;

__attribute__((used)) static inline struct dentry *ovl_do_tmpfile(struct dentry *dentry, umode_t mode)
{
 struct dentry *ret = vfs_tmpfile(dentry, mode, 0);
 int err = PTR_ERR_OR_ZERO(ret);

 pr_debug("tmpfile(%pd2, 0%o) = %i\n", dentry, mode, err);
 return ret;
}
