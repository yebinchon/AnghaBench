
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_xattr_value_root {int dummy; } ;
struct ocfs2_xattr_value_buf {TYPE_2__* vb_bh; struct ocfs2_xattr_value_root* vb_xv; int vb_access; } ;
struct ocfs2_xattr_set_ctxt {int handle; } ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; } ;
struct ocfs2_xattr_entry {int xe_value_size; int xe_name_len; int xe_name_offset; } ;
struct ocfs2_xattr_bucket {TYPE_2__** bu_bhs; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;
struct TYPE_3__ {size_t s_blocksize; } ;


 int BUG_ON (int) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_XATTR_ROOT_SIZE ;
 int OCFS2_XATTR_SIZE (int ) ;
 scalar_t__ bucket_blkno (struct ocfs2_xattr_bucket*) ;
 struct ocfs2_xattr_header* bucket_xh (struct ocfs2_xattr_bucket*) ;
 int cpu_to_le64 (int) ;
 int le16_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_journal_access ;
 int ocfs2_xattr_bucket_journal_access (int ,struct ocfs2_xattr_bucket*,int ) ;
 int ocfs2_xattr_bucket_journal_dirty (int ,struct ocfs2_xattr_bucket*) ;
 scalar_t__ ocfs2_xattr_is_local (struct ocfs2_xattr_entry*) ;
 int ocfs2_xattr_value_truncate (struct inode*,struct ocfs2_xattr_value_buf*,int,struct ocfs2_xattr_set_ctxt*) ;
 int trace_ocfs2_xattr_bucket_value_truncate (unsigned long long,int,int) ;

__attribute__((used)) static int ocfs2_xattr_bucket_value_truncate(struct inode *inode,
          struct ocfs2_xattr_bucket *bucket,
          int xe_off,
          int len,
          struct ocfs2_xattr_set_ctxt *ctxt)
{
 int ret, offset;
 u64 value_blk;
 struct ocfs2_xattr_entry *xe;
 struct ocfs2_xattr_header *xh = bucket_xh(bucket);
 size_t blocksize = inode->i_sb->s_blocksize;
 struct ocfs2_xattr_value_buf vb = {
  .vb_access = ocfs2_journal_access,
 };

 xe = &xh->xh_entries[xe_off];

 BUG_ON(!xe || ocfs2_xattr_is_local(xe));

 offset = le16_to_cpu(xe->xe_name_offset) +
   OCFS2_XATTR_SIZE(xe->xe_name_len);

 value_blk = offset / blocksize;


 BUG_ON(value_blk != (offset + OCFS2_XATTR_ROOT_SIZE - 1) / blocksize);

 vb.vb_bh = bucket->bu_bhs[value_blk];
 BUG_ON(!vb.vb_bh);

 vb.vb_xv = (struct ocfs2_xattr_value_root *)
  (vb.vb_bh->b_data + offset % blocksize);
 trace_ocfs2_xattr_bucket_value_truncate(
   (unsigned long long)bucket_blkno(bucket), xe_off, len);
 ret = ocfs2_xattr_value_truncate(inode, &vb, len, ctxt);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_xattr_bucket_journal_access(ctxt->handle, bucket,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 xe->xe_value_size = cpu_to_le64(len);

 ocfs2_xattr_bucket_journal_dirty(ctxt->handle, bucket);

out:
 return ret;
}
