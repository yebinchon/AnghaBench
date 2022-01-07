
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_sb; } ;
struct TYPE_2__ {int i_nlink; } ;


 TYPE_1__* d_inode (struct dentry*) ;
 int d_is_dir (struct dentry*) ;
 struct dentry* ovl_dentry_lower (struct dentry*) ;
 scalar_t__ ovl_index_all (int ) ;
 int ovl_indexdir (int ) ;

bool ovl_need_index(struct dentry *dentry)
{
 struct dentry *lower = ovl_dentry_lower(dentry);

 if (!lower || !ovl_indexdir(dentry->d_sb))
  return 0;


 if (ovl_index_all(dentry->d_sb))
  return 1;


 if (!d_is_dir(lower) && d_inode(lower)->i_nlink > 1)
  return 1;

 return 0;
}
