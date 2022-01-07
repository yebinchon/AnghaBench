
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct ocfs2_super {int sb; } ;
struct ocfs2_chain_list {int cl_cpg; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int ENOMEM ;
 int ENOSPC ;
 struct buffer_head* ERR_PTR (int) ;
 int INODE_CACHE (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int le16_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_block_group_fill (int *,struct inode*,struct buffer_head*,scalar_t__,int ,unsigned int,struct ocfs2_chain_list*) ;
 int ocfs2_claim_clusters (int *,struct ocfs2_alloc_context*,int ,int *,int *) ;
 scalar_t__ ocfs2_clusters_to_blocks (int ,int ) ;
 unsigned int ocfs2_find_smallest_chain (struct ocfs2_chain_list*) ;
 int ocfs2_set_new_buffer_uptodate (int ,struct buffer_head*) ;
 struct buffer_head* sb_getblk (int ,scalar_t__) ;
 int trace_ocfs2_block_group_alloc_contig (unsigned long long,unsigned int) ;

__attribute__((used)) static struct buffer_head *
ocfs2_block_group_alloc_contig(struct ocfs2_super *osb, handle_t *handle,
          struct inode *alloc_inode,
          struct ocfs2_alloc_context *ac,
          struct ocfs2_chain_list *cl)
{
 int status;
 u32 bit_off, num_bits;
 u64 bg_blkno;
 struct buffer_head *bg_bh;
 unsigned int alloc_rec = ocfs2_find_smallest_chain(cl);

 status = ocfs2_claim_clusters(handle, ac,
          le16_to_cpu(cl->cl_cpg), &bit_off,
          &num_bits);
 if (status < 0) {
  if (status != -ENOSPC)
   mlog_errno(status);
  goto bail;
 }


 bg_blkno = ocfs2_clusters_to_blocks(osb->sb, bit_off);
 trace_ocfs2_block_group_alloc_contig(
      (unsigned long long)bg_blkno, alloc_rec);

 bg_bh = sb_getblk(osb->sb, bg_blkno);
 if (!bg_bh) {
  status = -ENOMEM;
  mlog_errno(status);
  goto bail;
 }
 ocfs2_set_new_buffer_uptodate(INODE_CACHE(alloc_inode), bg_bh);

 status = ocfs2_block_group_fill(handle, alloc_inode, bg_bh,
     bg_blkno, num_bits, alloc_rec, cl);
 if (status < 0) {
  brelse(bg_bh);
  mlog_errno(status);
 }

bail:
 return status ? ERR_PTR(status) : bg_bh;
}
