
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_shadow_map {int frozen_btnodes; int frozen_data; } ;
struct nilfs_mdt_info {int mi_sem; struct nilfs_shadow_map* mi_shadow; } ;
struct inode {int dummy; } ;


 struct nilfs_mdt_info* NILFS_MDT (struct inode*) ;
 int down_write (int *) ;
 int nilfs_release_frozen_buffers (struct nilfs_shadow_map*) ;
 int truncate_inode_pages (int *,int ) ;
 int up_write (int *) ;

void nilfs_mdt_clear_shadow_map(struct inode *inode)
{
 struct nilfs_mdt_info *mi = NILFS_MDT(inode);
 struct nilfs_shadow_map *shadow = mi->mi_shadow;

 down_write(&mi->mi_sem);
 nilfs_release_frozen_buffers(shadow);
 truncate_inode_pages(&shadow->frozen_data, 0);
 truncate_inode_pages(&shadow->frozen_btnodes, 0);
 up_write(&mi->mi_sem);
}
