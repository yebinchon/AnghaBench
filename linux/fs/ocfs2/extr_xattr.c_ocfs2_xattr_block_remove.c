
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_value_buf {int vb_access; struct buffer_head* vb_bh; } ;
struct ocfs2_xattr_header {int dummy; } ;
struct TYPE_2__ {struct ocfs2_xattr_header xb_header; } ;
struct ocfs2_xattr_block {TYPE_1__ xb_attrs; int xb_flags; } ;
struct ocfs2_rm_xattr_bucket_para {struct buffer_head* ref_root_bh; struct ocfs2_caching_info* ref_ci; } ;
struct ocfs2_caching_info {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int OCFS2_XATTR_INDEXED ;
 int le16_to_cpu (int ) ;
 int ocfs2_iterate_xattr_index_block (struct inode*,struct buffer_head*,int ,struct ocfs2_rm_xattr_bucket_para*) ;
 int ocfs2_journal_access_xb ;
 int ocfs2_remove_value_outside (struct inode*,struct ocfs2_xattr_value_buf*,struct ocfs2_xattr_header*,struct ocfs2_caching_info*,struct buffer_head*) ;
 int ocfs2_rm_xattr_cluster ;

__attribute__((used)) static int ocfs2_xattr_block_remove(struct inode *inode,
        struct buffer_head *blk_bh,
        struct ocfs2_caching_info *ref_ci,
        struct buffer_head *ref_root_bh)
{
 struct ocfs2_xattr_block *xb;
 int ret = 0;
 struct ocfs2_xattr_value_buf vb = {
  .vb_bh = blk_bh,
  .vb_access = ocfs2_journal_access_xb,
 };
 struct ocfs2_rm_xattr_bucket_para args = {
  .ref_ci = ref_ci,
  .ref_root_bh = ref_root_bh,
 };

 xb = (struct ocfs2_xattr_block *)blk_bh->b_data;
 if (!(le16_to_cpu(xb->xb_flags) & OCFS2_XATTR_INDEXED)) {
  struct ocfs2_xattr_header *header = &(xb->xb_attrs.xb_header);
  ret = ocfs2_remove_value_outside(inode, &vb, header,
       ref_ci, ref_root_bh);
 } else
  ret = ocfs2_iterate_xattr_index_block(inode,
      blk_bh,
      ocfs2_rm_xattr_cluster,
      &args);

 return ret;
}
