
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_ino; int i_sb; } ;
struct dentry {int d_name; } ;
typedef int btree_key ;
struct TYPE_5__ {int cat_key; } ;
struct TYPE_4__ {int i_ino; } ;


 int EINVAL ;
 TYPE_2__* HFS_I (TYPE_1__*) ;
 unsigned int RENAME_NOREPLACE ;
 TYPE_1__* d_inode (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int hfs_cat_build_key (int ,int *,int ,int *) ;
 int hfs_cat_move (int ,struct inode*,int *,struct inode*,int *) ;
 int hfs_remove (struct inode*,struct dentry*) ;

__attribute__((used)) static int hfs_rename(struct inode *old_dir, struct dentry *old_dentry,
        struct inode *new_dir, struct dentry *new_dentry,
        unsigned int flags)
{
 int res;

 if (flags & ~RENAME_NOREPLACE)
  return -EINVAL;


 if (d_really_is_positive(new_dentry)) {
  res = hfs_remove(new_dir, new_dentry);
  if (res)
   return res;
 }

 res = hfs_cat_move(d_inode(old_dentry)->i_ino,
      old_dir, &old_dentry->d_name,
      new_dir, &new_dentry->d_name);
 if (!res)
  hfs_cat_build_key(old_dir->i_sb,
      (btree_key *)&HFS_I(d_inode(old_dentry))->cat_key,
      new_dir->i_ino, &new_dentry->d_name);
 return res;
}
