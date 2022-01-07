
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct ocfs2_xattr_block {int xb_suballoc_slot; scalar_t__ xb_suballoc_loc; int xb_suballoc_bit; scalar_t__ xb_blkno; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 int ENOMEM ;
 int EXTENT_ALLOC_SYSTEM_INODE ;
 scalar_t__ IS_ERR (int *) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int OCFS2_SUBALLOC_FREE ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (scalar_t__) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_free_suballoc_bits (int *,struct inode*,struct buffer_head*,int ,int ,int) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int ) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_read_xattr_block (struct inode*,int ,struct buffer_head**) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_which_suballoc_group (int ,int ) ;
 int ocfs2_xattr_block_remove (struct inode*,struct buffer_head*,struct ocfs2_caching_info*,struct buffer_head*) ;

__attribute__((used)) static int ocfs2_xattr_free_block(struct inode *inode,
      u64 block,
      struct ocfs2_caching_info *ref_ci,
      struct buffer_head *ref_root_bh)
{
 struct inode *xb_alloc_inode;
 struct buffer_head *xb_alloc_bh = ((void*)0);
 struct buffer_head *blk_bh = ((void*)0);
 struct ocfs2_xattr_block *xb;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 handle_t *handle;
 int ret = 0;
 u64 blk, bg_blkno;
 u16 bit;

 ret = ocfs2_read_xattr_block(inode, block, &blk_bh);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_xattr_block_remove(inode, blk_bh, ref_ci, ref_root_bh);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

 xb = (struct ocfs2_xattr_block *)blk_bh->b_data;
 blk = le64_to_cpu(xb->xb_blkno);
 bit = le16_to_cpu(xb->xb_suballoc_bit);
 if (xb->xb_suballoc_loc)
  bg_blkno = le64_to_cpu(xb->xb_suballoc_loc);
 else
  bg_blkno = ocfs2_which_suballoc_group(blk, bit);

 xb_alloc_inode = ocfs2_get_system_file_inode(osb,
    EXTENT_ALLOC_SYSTEM_INODE,
    le16_to_cpu(xb->xb_suballoc_slot));
 if (!xb_alloc_inode) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }
 inode_lock(xb_alloc_inode);

 ret = ocfs2_inode_lock(xb_alloc_inode, &xb_alloc_bh, 1);
 if (ret < 0) {
  mlog_errno(ret);
  goto out_mutex;
 }

 handle = ocfs2_start_trans(osb, OCFS2_SUBALLOC_FREE);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out_unlock;
 }

 ret = ocfs2_free_suballoc_bits(handle, xb_alloc_inode, xb_alloc_bh,
           bit, bg_blkno, 1);
 if (ret < 0)
  mlog_errno(ret);

 ocfs2_commit_trans(osb, handle);
out_unlock:
 ocfs2_inode_unlock(xb_alloc_inode, 1);
 brelse(xb_alloc_bh);
out_mutex:
 inode_unlock(xb_alloc_inode);
 iput(xb_alloc_inode);
out:
 brelse(blk_bh);
 return ret;
}
