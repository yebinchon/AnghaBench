
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_refcount_block {int rf_last_eb_blk; } ;
struct ocfs2_extent_tree {struct ocfs2_refcount_block* et_object; } ;


 int cpu_to_le64 (int ) ;

__attribute__((used)) static void ocfs2_refcount_tree_set_last_eb_blk(struct ocfs2_extent_tree *et,
      u64 blkno)
{
 struct ocfs2_refcount_block *rb = et->et_object;

 rb->rf_last_eb_blk = cpu_to_le64(blkno);
}
