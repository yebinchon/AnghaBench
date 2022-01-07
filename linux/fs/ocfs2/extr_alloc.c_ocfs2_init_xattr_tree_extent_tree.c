
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 int __ocfs2_init_extent_tree (struct ocfs2_extent_tree*,struct ocfs2_caching_info*,struct buffer_head*,int ,int *,int *) ;
 int ocfs2_journal_access_xb ;
 int ocfs2_xattr_tree_et_ops ;

void ocfs2_init_xattr_tree_extent_tree(struct ocfs2_extent_tree *et,
           struct ocfs2_caching_info *ci,
           struct buffer_head *bh)
{
 __ocfs2_init_extent_tree(et, ci, bh, ocfs2_journal_access_xb,
     ((void*)0), &ocfs2_xattr_tree_et_ops);
}
