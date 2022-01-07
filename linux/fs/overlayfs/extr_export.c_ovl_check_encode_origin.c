
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_fs {scalar_t__ upper_mnt; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {struct ovl_fs* s_fs_info; } ;


 int OVL_INDEX ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_is_dir (struct dentry*) ;
 int ovl_connect_layer (struct dentry*) ;
 int ovl_dentry_lower (struct dentry*) ;
 scalar_t__ ovl_dentry_upper (struct dentry*) ;
 int ovl_test_flag (int ,int ) ;

__attribute__((used)) static int ovl_check_encode_origin(struct dentry *dentry)
{
 struct ovl_fs *ofs = dentry->d_sb->s_fs_info;


 if (!ovl_dentry_lower(dentry))
  return 0;







 if (ovl_dentry_upper(dentry) &&
     !ovl_test_flag(OVL_INDEX, d_inode(dentry)))
  return 0;







 if (d_is_dir(dentry) && ofs->upper_mnt)
  return ovl_connect_layer(dentry);


 return 1;
}
