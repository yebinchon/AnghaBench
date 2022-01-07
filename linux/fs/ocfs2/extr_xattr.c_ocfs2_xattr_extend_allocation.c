
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ocfs2_xattr_value_buf {int (* vb_access ) (int *,int ,int ,int ) ;TYPE_1__* vb_xv; int vb_bh; } ;
struct ocfs2_xattr_set_ctxt {int meta_ac; int data_ac; int * handle; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct inode {int i_sb; } ;
typedef int handle_t ;
typedef enum ocfs2_alloc_restarted { ____Placeholder_ocfs2_alloc_restarted } ocfs2_alloc_restarted ;
struct TYPE_2__ {int xr_list; int xr_clusters; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOMEM ;
 int ENOSPC ;
 int INODE_CACHE (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int RESTART_META ;
 int RESTART_NONE ;
 scalar_t__ le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_add_clusters_in_btree (int *,struct ocfs2_extent_tree*,scalar_t__*,scalar_t__,int ,int ,int ,int*) ;
 int ocfs2_calc_extend_credits (int ,int *) ;
 int ocfs2_extend_trans (int *,int) ;
 int ocfs2_init_xattr_value_extent_tree (struct ocfs2_extent_tree*,int ,struct ocfs2_xattr_value_buf*) ;
 int ocfs2_journal_dirty (int *,int ) ;
 int stub1 (int *,int ,int ,int ) ;
 int trace_ocfs2_xattr_extend_allocation (scalar_t__) ;

__attribute__((used)) static int ocfs2_xattr_extend_allocation(struct inode *inode,
      u32 clusters_to_add,
      struct ocfs2_xattr_value_buf *vb,
      struct ocfs2_xattr_set_ctxt *ctxt)
{
 int status = 0, credits;
 handle_t *handle = ctxt->handle;
 enum ocfs2_alloc_restarted why;
 u32 prev_clusters, logical_start = le32_to_cpu(vb->vb_xv->xr_clusters);
 struct ocfs2_extent_tree et;

 ocfs2_init_xattr_value_extent_tree(&et, INODE_CACHE(inode), vb);

 while (clusters_to_add) {
  trace_ocfs2_xattr_extend_allocation(clusters_to_add);

  status = vb->vb_access(handle, INODE_CACHE(inode), vb->vb_bh,
           OCFS2_JOURNAL_ACCESS_WRITE);
  if (status < 0) {
   mlog_errno(status);
   break;
  }

  prev_clusters = le32_to_cpu(vb->vb_xv->xr_clusters);
  status = ocfs2_add_clusters_in_btree(handle,
           &et,
           &logical_start,
           clusters_to_add,
           0,
           ctxt->data_ac,
           ctxt->meta_ac,
           &why);
  if ((status < 0) && (status != -EAGAIN)) {
   if (status != -ENOSPC)
    mlog_errno(status);
   break;
  }

  ocfs2_journal_dirty(handle, vb->vb_bh);

  clusters_to_add -= le32_to_cpu(vb->vb_xv->xr_clusters) -
      prev_clusters;

  if (why != RESTART_NONE && clusters_to_add) {




   BUG_ON(why == RESTART_META);

   credits = ocfs2_calc_extend_credits(inode->i_sb,
           &vb->vb_xv->xr_list);
   status = ocfs2_extend_trans(handle, credits);
   if (status < 0) {
    status = -ENOMEM;
    mlog_errno(status);
    break;
   }
  }
 }

 return status;
}
