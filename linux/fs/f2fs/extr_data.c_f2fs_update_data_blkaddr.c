
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnode_of_data {int data_blkaddr; } ;
typedef int block_t ;


 int f2fs_set_data_blkaddr (struct dnode_of_data*) ;
 int f2fs_update_extent_cache (struct dnode_of_data*) ;

void f2fs_update_data_blkaddr(struct dnode_of_data *dn, block_t blkaddr)
{
 dn->data_blkaddr = blkaddr;
 f2fs_set_data_blkaddr(dn);
 f2fs_update_extent_cache(dn);
}
