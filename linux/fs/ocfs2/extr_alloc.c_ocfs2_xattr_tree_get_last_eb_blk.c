
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_xattr_tree_root {int xt_last_eb_blk; } ;
struct TYPE_2__ {struct ocfs2_xattr_tree_root xb_root; } ;
struct ocfs2_xattr_block {TYPE_1__ xb_attrs; } ;
struct ocfs2_extent_tree {struct ocfs2_xattr_block* et_object; } ;


 int le64_to_cpu (int ) ;

__attribute__((used)) static u64 ocfs2_xattr_tree_get_last_eb_blk(struct ocfs2_extent_tree *et)
{
 struct ocfs2_xattr_block *xb = et->et_object;
 struct ocfs2_xattr_tree_root *xt = &xb->xb_attrs.xb_root;

 return le64_to_cpu(xt->xt_last_eb_blk);
}
