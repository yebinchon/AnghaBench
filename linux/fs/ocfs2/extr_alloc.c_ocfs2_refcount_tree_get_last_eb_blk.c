
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_refcount_block {int rf_last_eb_blk; } ;
struct ocfs2_extent_tree {struct ocfs2_refcount_block* et_object; } ;


 int le64_to_cpu (int ) ;

__attribute__((used)) static u64 ocfs2_refcount_tree_get_last_eb_blk(struct ocfs2_extent_tree *et)
{
 struct ocfs2_refcount_block *rb = et->et_object;

 return le64_to_cpu(rb->rf_last_eb_blk);
}
