
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_value_root {int dummy; } ;
struct ocfs2_xattr_value_buf {struct ocfs2_xattr_value_root* vb_xv; } ;
struct ocfs2_xattr_set_ctxt {int dealloc; int * meta_ac; int handle; int * member_1; int * member_0; } ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; int xh_count; } ;
struct ocfs2_xattr_entry {int xe_name_len; int xe_name_offset; } ;
struct ocfs2_super {int sb; } ;
struct ocfs2_caching_info {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int OCFS2_XATTR_SIZE (int ) ;
 int PTR_ERR (int ) ;
 int le16_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int ) ;
 int ocfs2_free_alloc_context (int *) ;
 int ocfs2_init_dealloc_ctxt (int *) ;
 int ocfs2_lock_xattr_remove_allocators (struct inode*,struct ocfs2_xattr_value_root*,struct ocfs2_caching_info*,struct buffer_head*,int **,int*) ;
 scalar_t__ ocfs2_remove_extent_credits (int ) ;
 int ocfs2_run_deallocs (struct ocfs2_super*,int *) ;
 int ocfs2_schedule_truncate_log_flush (struct ocfs2_super*,int) ;
 int ocfs2_start_trans (struct ocfs2_super*,scalar_t__) ;
 scalar_t__ ocfs2_xattr_is_local (struct ocfs2_xattr_entry*) ;
 int ocfs2_xattr_value_truncate (struct inode*,struct ocfs2_xattr_value_buf*,int ,struct ocfs2_xattr_set_ctxt*) ;

__attribute__((used)) static int ocfs2_remove_value_outside(struct inode*inode,
          struct ocfs2_xattr_value_buf *vb,
          struct ocfs2_xattr_header *header,
          struct ocfs2_caching_info *ref_ci,
          struct buffer_head *ref_root_bh)
{
 int ret = 0, i, ref_credits;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_xattr_set_ctxt ctxt = { ((void*)0), ((void*)0), };
 void *val;

 ocfs2_init_dealloc_ctxt(&ctxt.dealloc);

 for (i = 0; i < le16_to_cpu(header->xh_count); i++) {
  struct ocfs2_xattr_entry *entry = &header->xh_entries[i];

  if (ocfs2_xattr_is_local(entry))
   continue;

  val = (void *)header +
   le16_to_cpu(entry->xe_name_offset);
  vb->vb_xv = (struct ocfs2_xattr_value_root *)
   (val + OCFS2_XATTR_SIZE(entry->xe_name_len));

  ret = ocfs2_lock_xattr_remove_allocators(inode, vb->vb_xv,
        ref_ci, ref_root_bh,
        &ctxt.meta_ac,
        &ref_credits);

  ctxt.handle = ocfs2_start_trans(osb, ref_credits +
     ocfs2_remove_extent_credits(osb->sb));
  if (IS_ERR(ctxt.handle)) {
   ret = PTR_ERR(ctxt.handle);
   mlog_errno(ret);
   break;
  }

  ret = ocfs2_xattr_value_truncate(inode, vb, 0, &ctxt);

  ocfs2_commit_trans(osb, ctxt.handle);
  if (ctxt.meta_ac) {
   ocfs2_free_alloc_context(ctxt.meta_ac);
   ctxt.meta_ac = ((void*)0);
  }

  if (ret < 0) {
   mlog_errno(ret);
   break;
  }

 }

 if (ctxt.meta_ac)
  ocfs2_free_alloc_context(ctxt.meta_ac);
 ocfs2_schedule_truncate_log_flush(osb, 1);
 ocfs2_run_deallocs(osb, &ctxt.dealloc);
 return ret;
}
