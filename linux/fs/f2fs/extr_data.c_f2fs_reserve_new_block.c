
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnode_of_data {unsigned int ofs_in_node; } ;


 int f2fs_reserve_new_blocks (struct dnode_of_data*,int) ;

int f2fs_reserve_new_block(struct dnode_of_data *dn)
{
 unsigned int ofs_in_node = dn->ofs_in_node;
 int ret;

 ret = f2fs_reserve_new_blocks(dn, 1);
 dn->ofs_in_node = ofs_in_node;
 return ret;
}
