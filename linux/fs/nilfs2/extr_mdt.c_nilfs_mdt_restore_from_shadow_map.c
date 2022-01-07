
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_shadow_map {int bmap_store; int frozen_btnodes; int frozen_data; } ;
struct nilfs_mdt_info {int mi_sem; scalar_t__ mi_palloc_cache; struct nilfs_shadow_map* mi_shadow; } ;
struct nilfs_inode_info {int i_bmap; int i_btnode_cache; } ;
struct inode {int * i_mapping; } ;


 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 struct nilfs_mdt_info* NILFS_MDT (struct inode*) ;
 int down_write (int *) ;
 int nilfs_bmap_restore (int ,int *) ;
 int nilfs_clear_dirty_pages (int *,int) ;
 int nilfs_copy_back_pages (int *,int *) ;
 int nilfs_palloc_clear_cache (struct inode*) ;
 int up_write (int *) ;

void nilfs_mdt_restore_from_shadow_map(struct inode *inode)
{
 struct nilfs_mdt_info *mi = NILFS_MDT(inode);
 struct nilfs_inode_info *ii = NILFS_I(inode);
 struct nilfs_shadow_map *shadow = mi->mi_shadow;

 down_write(&mi->mi_sem);

 if (mi->mi_palloc_cache)
  nilfs_palloc_clear_cache(inode);

 nilfs_clear_dirty_pages(inode->i_mapping, 1);
 nilfs_copy_back_pages(inode->i_mapping, &shadow->frozen_data);

 nilfs_clear_dirty_pages(&ii->i_btnode_cache, 1);
 nilfs_copy_back_pages(&ii->i_btnode_cache, &shadow->frozen_btnodes);

 nilfs_bmap_restore(ii->i_bmap, &shadow->bmap_store);

 up_write(&mi->mi_sem);
}
