
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ovl_fs {int dummy; } ;
struct dentry {int dummy; } ;


 int ELOOP ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 scalar_t__ ovl_is_inuse (struct dentry*) ;
 scalar_t__ ovl_lookup_trap_inode (struct super_block*,struct dentry*) ;
 int ovl_report_in_use (struct ovl_fs*,char const*) ;
 int pr_err (char*,char const*) ;

__attribute__((used)) static int ovl_check_layer(struct super_block *sb, struct ovl_fs *ofs,
      struct dentry *dentry, const char *name)
{
 struct dentry *next = dentry, *parent;
 int err = 0;

 if (!dentry)
  return 0;

 parent = dget_parent(next);


 while (!err && parent != next) {
  if (ovl_lookup_trap_inode(sb, parent)) {
   err = -ELOOP;
   pr_err("overlayfs: overlapping %s path\n", name);
  } else if (ovl_is_inuse(parent)) {
   err = ovl_report_in_use(ofs, name);
  }
  next = parent;
  parent = dget_parent(next);
  dput(next);
 }

 dput(parent);

 return err;
}
