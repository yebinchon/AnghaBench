
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_xattr_value_buf {TYPE_1__* vb_xv; } ;
struct ocfs2_extent_tree {struct ocfs2_xattr_value_buf* et_object; } ;
struct TYPE_2__ {int xr_last_eb_blk; } ;


 int cpu_to_le64 (int ) ;

__attribute__((used)) static void ocfs2_xattr_value_set_last_eb_blk(struct ocfs2_extent_tree *et,
           u64 blkno)
{
 struct ocfs2_xattr_value_buf *vb = et->et_object;

 vb->vb_xv->xr_last_eb_blk = cpu_to_le64(blkno);
}
