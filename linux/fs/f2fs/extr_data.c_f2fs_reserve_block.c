
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnode_of_data {scalar_t__ data_blkaddr; scalar_t__ inode_page; } ;
typedef int pgoff_t ;


 int ALLOC_NODE ;
 scalar_t__ NULL_ADDR ;
 int f2fs_get_dnode_of_data (struct dnode_of_data*,int ,int ) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_reserve_new_block (struct dnode_of_data*) ;

int f2fs_reserve_block(struct dnode_of_data *dn, pgoff_t index)
{
 bool need_put = dn->inode_page ? 0 : 1;
 int err;

 err = f2fs_get_dnode_of_data(dn, index, ALLOC_NODE);
 if (err)
  return err;

 if (dn->data_blkaddr == NULL_ADDR)
  err = f2fs_reserve_new_block(dn);
 if (err || need_put)
  f2fs_put_dnode(dn);
 return err;
}
