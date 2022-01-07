
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_fs {int noxattr; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {struct ovl_fs* s_fs_info; } ;


 int EOPNOTSUPP ;
 int ovl_do_setxattr (struct dentry*,char const*,void const*,size_t,int ) ;
 int pr_warn (char*,char const*) ;

int ovl_check_setxattr(struct dentry *dentry, struct dentry *upperdentry,
         const char *name, const void *value, size_t size,
         int xerr)
{
 int err;
 struct ovl_fs *ofs = dentry->d_sb->s_fs_info;

 if (ofs->noxattr)
  return xerr;

 err = ovl_do_setxattr(upperdentry, name, value, size, 0);

 if (err == -EOPNOTSUPP) {
  pr_warn("overlayfs: cannot set %s xattr on upper\n", name);
  ofs->noxattr = 1;
  return xerr;
 }

 return err;
}
