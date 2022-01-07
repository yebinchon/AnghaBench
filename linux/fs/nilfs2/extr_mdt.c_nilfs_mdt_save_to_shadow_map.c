
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_shadow_map {int bmap_store; int frozen_btnodes; int frozen_data; } ;
struct nilfs_mdt_info {struct nilfs_shadow_map* mi_shadow; } ;
struct nilfs_inode_info {int i_bmap; int i_btnode_cache; } ;
struct inode {int * i_mapping; } ;


 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 struct nilfs_mdt_info* NILFS_MDT (struct inode*) ;
 int nilfs_bmap_save (int ,int *) ;
 int nilfs_copy_dirty_pages (int *,int *) ;

int nilfs_mdt_save_to_shadow_map(struct inode *inode)
{
 struct nilfs_mdt_info *mi = NILFS_MDT(inode);
 struct nilfs_inode_info *ii = NILFS_I(inode);
 struct nilfs_shadow_map *shadow = mi->mi_shadow;
 int ret;

 ret = nilfs_copy_dirty_pages(&shadow->frozen_data, inode->i_mapping);
 if (ret)
  goto out;

 ret = nilfs_copy_dirty_pages(&shadow->frozen_btnodes,
         &ii->i_btnode_cache);
 if (ret)
  goto out;

 nilfs_bmap_save(ii->i_bmap, &shadow->bmap_store);
 out:
 return ret;
}
