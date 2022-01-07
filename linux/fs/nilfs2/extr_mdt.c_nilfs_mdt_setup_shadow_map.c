
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_shadow_map {int frozen_btnodes; int frozen_data; int frozen_buffers; } ;
struct nilfs_mdt_info {struct nilfs_shadow_map* mi_shadow; } ;
struct inode {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 struct nilfs_mdt_info* NILFS_MDT (struct inode*) ;
 int address_space_init_once (int *) ;
 int nilfs_mapping_init (int *,struct inode*) ;

int nilfs_mdt_setup_shadow_map(struct inode *inode,
          struct nilfs_shadow_map *shadow)
{
 struct nilfs_mdt_info *mi = NILFS_MDT(inode);

 INIT_LIST_HEAD(&shadow->frozen_buffers);
 address_space_init_once(&shadow->frozen_data);
 nilfs_mapping_init(&shadow->frozen_data, inode);
 address_space_init_once(&shadow->frozen_btnodes);
 nilfs_mapping_init(&shadow->frozen_btnodes, inode);
 mi->mi_shadow = shadow;
 return 0;
}
