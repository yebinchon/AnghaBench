
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct address_space {int * a_ops; int * private_data; scalar_t__ flags; struct inode* host; } ;


 int GFP_NOFS ;
 int empty_aops ;
 int mapping_set_gfp_mask (struct address_space*,int ) ;

void nilfs_mapping_init(struct address_space *mapping, struct inode *inode)
{
 mapping->host = inode;
 mapping->flags = 0;
 mapping_set_gfp_mask(mapping, GFP_NOFS);
 mapping->private_data = ((void*)0);
 mapping->a_ops = &empty_aops;
}
