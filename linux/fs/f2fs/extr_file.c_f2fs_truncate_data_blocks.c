
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnode_of_data {int inode; } ;


 int ADDRS_PER_BLOCK (int ) ;
 int f2fs_truncate_data_blocks_range (struct dnode_of_data*,int ) ;

void f2fs_truncate_data_blocks(struct dnode_of_data *dn)
{
 f2fs_truncate_data_blocks_range(dn, ADDRS_PER_BLOCK(dn->inode));
}
