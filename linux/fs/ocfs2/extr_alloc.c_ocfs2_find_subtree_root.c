
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_path {int p_tree_depth; TYPE_1__* p_node; } ;
struct ocfs2_extent_tree {int et_ci; } ;
struct TYPE_6__ {scalar_t__ b_blocknr; } ;
struct TYPE_5__ {scalar_t__ b_blocknr; } ;
struct TYPE_4__ {TYPE_2__* bh; } ;


 int BUG_ON (int) ;
 int mlog_bug_on_msg (int,char*,unsigned long long,int,int,unsigned long long,unsigned long long) ;
 scalar_t__ ocfs2_metadata_cache_owner (int ) ;
 TYPE_3__* path_leaf_bh (struct ocfs2_path*) ;
 scalar_t__ path_root_bh (struct ocfs2_path*) ;

int ocfs2_find_subtree_root(struct ocfs2_extent_tree *et,
       struct ocfs2_path *left,
       struct ocfs2_path *right)
{
 int i = 0;




 BUG_ON(path_root_bh(left) != path_root_bh(right));

 do {
  i++;




  mlog_bug_on_msg(i > left->p_tree_depth,
    "Owner %llu, left depth %u, right depth %u\n"
    "left leaf blk %llu, right leaf blk %llu\n",
    (unsigned long long)ocfs2_metadata_cache_owner(et->et_ci),
    left->p_tree_depth, right->p_tree_depth,
    (unsigned long long)path_leaf_bh(left)->b_blocknr,
    (unsigned long long)path_leaf_bh(right)->b_blocknr);
 } while (left->p_node[i].bh->b_blocknr ==
   right->p_node[i].bh->b_blocknr);

 return i - 1;
}
