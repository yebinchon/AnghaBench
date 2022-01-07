
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_inode_info {int i_bmap; scalar_t__ i_flags; } ;
struct inode {TYPE_1__* i_mapping; int i_mode; } ;
struct TYPE_2__ {int * a_ops; } ;


 int GFP_NOFS ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int S_IFREG ;
 int empty_aops ;
 int mapping_set_gfp_mask (TYPE_1__*,int ) ;
 int nilfs_bmap_init_gc (int ) ;

int nilfs_init_gcinode(struct inode *inode)
{
 struct nilfs_inode_info *ii = NILFS_I(inode);

 inode->i_mode = S_IFREG;
 mapping_set_gfp_mask(inode->i_mapping, GFP_NOFS);
 inode->i_mapping->a_ops = &empty_aops;

 ii->i_flags = 0;
 nilfs_bmap_init_gc(ii->i_bmap);

 return 0;
}
