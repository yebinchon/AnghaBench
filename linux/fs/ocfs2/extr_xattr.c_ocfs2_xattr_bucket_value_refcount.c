
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_value_buf {int vb_xv; int vb_bh; int vb_access; } ;
struct ocfs2_xattr_tree_value_refcount_para {int dealloc; int ref_root_bh; int ref_ci; } ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; int xh_count; } ;
struct ocfs2_xattr_entry {int dummy; } ;
struct ocfs2_xattr_bucket {int bu_blocks; TYPE_1__** bu_bhs; } ;
struct ocfs2_post_refcount {int func; struct ocfs2_xattr_bucket* para; int credits; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;


 int INODE_CACHE (struct inode*) ;
 int OCFS2_SB (int ) ;
 scalar_t__ bucket_blkno (struct ocfs2_xattr_bucket*) ;
 int le16_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_get_xattr_tree_value_root (int ,struct ocfs2_xattr_bucket*,int,int *,int *) ;
 int ocfs2_init_xattr_value_extent_tree (struct ocfs2_extent_tree*,int ,struct ocfs2_xattr_value_buf*) ;
 int ocfs2_journal_access ;
 scalar_t__ ocfs2_meta_ecc (int ) ;
 int ocfs2_xattr_bucket_post_refcount ;
 scalar_t__ ocfs2_xattr_is_local (struct ocfs2_xattr_entry*) ;
 int ocfs2_xattr_value_attach_refcount (struct inode*,int ,struct ocfs2_extent_tree*,int ,int ,int ,struct ocfs2_post_refcount*) ;
 int trace_ocfs2_xattr_bucket_value_refcount (unsigned long long,int) ;

__attribute__((used)) static int ocfs2_xattr_bucket_value_refcount(struct inode *inode,
          struct ocfs2_xattr_bucket *bucket,
          void *para)
{
 int i, ret = 0;
 struct ocfs2_extent_tree et;
 struct ocfs2_xattr_tree_value_refcount_para *ref =
   (struct ocfs2_xattr_tree_value_refcount_para *)para;
 struct ocfs2_xattr_header *xh =
   (struct ocfs2_xattr_header *)bucket->bu_bhs[0]->b_data;
 struct ocfs2_xattr_entry *xe;
 struct ocfs2_xattr_value_buf vb = {
  .vb_access = ocfs2_journal_access,
 };
 struct ocfs2_post_refcount refcount = {
  .credits = bucket->bu_blocks,
  .para = bucket,
  .func = ocfs2_xattr_bucket_post_refcount,
 };
 struct ocfs2_post_refcount *p = ((void*)0);


 if (ocfs2_meta_ecc(OCFS2_SB(inode->i_sb)))
  p = &refcount;

 trace_ocfs2_xattr_bucket_value_refcount(
    (unsigned long long)bucket_blkno(bucket),
    le16_to_cpu(xh->xh_count));
 for (i = 0; i < le16_to_cpu(xh->xh_count); i++) {
  xe = &xh->xh_entries[i];

  if (ocfs2_xattr_is_local(xe))
   continue;

  ret = ocfs2_get_xattr_tree_value_root(inode->i_sb, bucket, i,
            &vb.vb_xv, &vb.vb_bh);
  if (ret) {
   mlog_errno(ret);
   break;
  }

  ocfs2_init_xattr_value_extent_tree(&et,
         INODE_CACHE(inode), &vb);

  ret = ocfs2_xattr_value_attach_refcount(inode, vb.vb_xv,
       &et, ref->ref_ci,
       ref->ref_root_bh,
       ref->dealloc, p);
  if (ret) {
   mlog_errno(ret);
   break;
  }
 }

 return ret;

}
