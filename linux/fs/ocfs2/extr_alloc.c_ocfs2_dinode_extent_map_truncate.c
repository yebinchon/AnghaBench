
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_extent_tree {int et_ci; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode vfs_inode; } ;


 TYPE_1__* cache_info_to_inode (int ) ;
 int ocfs2_extent_map_trunc (struct inode*,int ) ;

__attribute__((used)) static void ocfs2_dinode_extent_map_truncate(struct ocfs2_extent_tree *et,
          u32 clusters)
{
 struct inode *inode = &cache_info_to_inode(et->et_ci)->vfs_inode;

 ocfs2_extent_map_trunc(inode, clusters);
}
