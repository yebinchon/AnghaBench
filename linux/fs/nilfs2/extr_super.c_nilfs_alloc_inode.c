
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct nilfs_inode_info {struct inode vfs_inode; int i_btnode_cache; scalar_t__ i_cno; scalar_t__ i_state; int * i_bh; } ;


 int GFP_NOFS ;
 struct nilfs_inode_info* kmem_cache_alloc (int ,int ) ;
 int nilfs_inode_cachep ;
 int nilfs_mapping_init (int *,struct inode*) ;

struct inode *nilfs_alloc_inode(struct super_block *sb)
{
 struct nilfs_inode_info *ii;

 ii = kmem_cache_alloc(nilfs_inode_cachep, GFP_NOFS);
 if (!ii)
  return ((void*)0);
 ii->i_bh = ((void*)0);
 ii->i_state = 0;
 ii->i_cno = 0;
 nilfs_mapping_init(&ii->i_btnode_cache, &ii->vfs_inode);
 return &ii->vfs_inode;
}
