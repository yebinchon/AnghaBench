
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;


 int GFP_USER ;
 int mapping_set_gfp_mask (int ,int ) ;

void inode_nohighmem(struct inode *inode)
{
 mapping_set_gfp_mask(inode->i_mapping, GFP_USER);
}
