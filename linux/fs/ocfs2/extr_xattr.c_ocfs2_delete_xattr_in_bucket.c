
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ocfs2_xattr_value_root {int dummy; } ;
struct ocfs2_xattr_set_ctxt {int dealloc; int * meta_ac; int handle; int * member_1; int * member_0; } ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; int xh_count; } ;
struct ocfs2_xattr_entry {int dummy; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct ocfs2_super {int sb; } ;
struct ocfs2_rm_xattr_bucket_para {int ref_root_bh; int ref_ci; } ;
struct inode {int i_sb; } ;


 scalar_t__ IS_ERR (int ) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int ) ;
 struct ocfs2_xattr_header* bucket_xh (struct ocfs2_xattr_bucket*) ;
 size_t le16_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_blocks_per_xattr_bucket (int ) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int ) ;
 int ocfs2_free_alloc_context (int *) ;
 int ocfs2_get_xattr_tree_value_root (int ,struct ocfs2_xattr_bucket*,size_t,struct ocfs2_xattr_value_root**,int *) ;
 int ocfs2_init_dealloc_ctxt (int *) ;
 int ocfs2_lock_xattr_remove_allocators (struct inode*,struct ocfs2_xattr_value_root*,int ,int ,int **,int*) ;
 int ocfs2_remove_extent_credits (int ) ;
 int ocfs2_run_deallocs (struct ocfs2_super*,int *) ;
 int ocfs2_schedule_truncate_log_flush (struct ocfs2_super*,int) ;
 int ocfs2_start_trans (struct ocfs2_super*,int) ;
 int ocfs2_xattr_bucket_value_truncate (struct inode*,struct ocfs2_xattr_bucket*,size_t,int ,struct ocfs2_xattr_set_ctxt*) ;
 scalar_t__ ocfs2_xattr_is_local (struct ocfs2_xattr_entry*) ;

__attribute__((used)) static int ocfs2_delete_xattr_in_bucket(struct inode *inode,
     struct ocfs2_xattr_bucket *bucket,
     void *para)
{
 int ret = 0, ref_credits;
 struct ocfs2_xattr_header *xh = bucket_xh(bucket);
 u16 i;
 struct ocfs2_xattr_entry *xe;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_xattr_set_ctxt ctxt = {((void*)0), ((void*)0),};
 int credits = ocfs2_remove_extent_credits(osb->sb) +
  ocfs2_blocks_per_xattr_bucket(inode->i_sb);
 struct ocfs2_xattr_value_root *xv;
 struct ocfs2_rm_xattr_bucket_para *args =
   (struct ocfs2_rm_xattr_bucket_para *)para;

 ocfs2_init_dealloc_ctxt(&ctxt.dealloc);

 for (i = 0; i < le16_to_cpu(xh->xh_count); i++) {
  xe = &xh->xh_entries[i];
  if (ocfs2_xattr_is_local(xe))
   continue;

  ret = ocfs2_get_xattr_tree_value_root(inode->i_sb, bucket,
            i, &xv, ((void*)0));
  if (ret) {
   mlog_errno(ret);
   break;
  }

  ret = ocfs2_lock_xattr_remove_allocators(inode, xv,
        args->ref_ci,
        args->ref_root_bh,
        &ctxt.meta_ac,
        &ref_credits);

  ctxt.handle = ocfs2_start_trans(osb, credits + ref_credits);
  if (IS_ERR(ctxt.handle)) {
   ret = PTR_ERR(ctxt.handle);
   mlog_errno(ret);
   break;
  }

  ret = ocfs2_xattr_bucket_value_truncate(inode, bucket,
       i, 0, &ctxt);

  ocfs2_commit_trans(osb, ctxt.handle);
  if (ctxt.meta_ac) {
   ocfs2_free_alloc_context(ctxt.meta_ac);
   ctxt.meta_ac = ((void*)0);
  }
  if (ret) {
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
