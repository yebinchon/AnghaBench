
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_extent_tree {int et_ci; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode vfs_inode; } ;


 TYPE_1__* cache_info_to_inode (int ) ;
 int ocfs2_extent_map_insert_rec (struct inode*,struct ocfs2_extent_rec*) ;

__attribute__((used)) static void ocfs2_dinode_extent_map_insert(struct ocfs2_extent_tree *et,
        struct ocfs2_extent_rec *rec)
{
 struct inode *inode = &cache_info_to_inode(et->et_ci)->vfs_inode;

 ocfs2_extent_map_insert_rec(inode, rec);
}
