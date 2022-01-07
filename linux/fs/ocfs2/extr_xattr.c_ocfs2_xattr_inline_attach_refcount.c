
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_value_buf {int vb_access; struct buffer_head* vb_bh; } ;
struct ocfs2_xattr_header {int dummy; } ;
struct ocfs2_dinode {int i_xattr_inline_size; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {scalar_t__ s_blocksize; } ;


 scalar_t__ le16_to_cpu (int ) ;
 int ocfs2_journal_access_di ;
 int ocfs2_xattr_attach_refcount_normal (struct inode*,struct ocfs2_xattr_value_buf*,struct ocfs2_xattr_header*,struct ocfs2_caching_info*,struct buffer_head*,struct ocfs2_cached_dealloc_ctxt*) ;

__attribute__((used)) static int ocfs2_xattr_inline_attach_refcount(struct inode *inode,
    struct buffer_head *fe_bh,
    struct ocfs2_caching_info *ref_ci,
    struct buffer_head *ref_root_bh,
    struct ocfs2_cached_dealloc_ctxt *dealloc)
{
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)fe_bh->b_data;
 struct ocfs2_xattr_header *header = (struct ocfs2_xattr_header *)
    (fe_bh->b_data + inode->i_sb->s_blocksize -
    le16_to_cpu(di->i_xattr_inline_size));
 struct ocfs2_xattr_value_buf vb = {
  .vb_bh = fe_bh,
  .vb_access = ocfs2_journal_access_di,
 };

 return ocfs2_xattr_attach_refcount_normal(inode, &vb, header,
        ref_ci, ref_root_bh, dealloc);
}
