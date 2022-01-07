
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ s_export_op; struct ovl_fs* s_fs_info; } ;
struct ovl_fs {int upper_mnt; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int i_nlink; } ;


 TYPE_1__* d_inode (struct dentry*) ;
 int d_is_dir (struct dentry*) ;
 int ovl_indexdir (struct super_block*) ;

__attribute__((used)) static bool ovl_hash_bylower(struct super_block *sb, struct dentry *upper,
        struct dentry *lower, struct dentry *index)
{
 struct ovl_fs *ofs = sb->s_fs_info;


 if (!lower)
  return 0;


 if (index)
  return 1;


 if (!ofs->upper_mnt)
  return 1;


 if ((upper || !ovl_indexdir(sb)) &&
     !d_is_dir(lower) && d_inode(lower)->i_nlink > 1)
  return 0;


 if (sb->s_export_op && upper)
  return 0;


 return 1;
}
