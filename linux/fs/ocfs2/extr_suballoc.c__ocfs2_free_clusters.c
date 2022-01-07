
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u16 ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int OCFS2_SB (int ) ;
 int _ocfs2_free_suballoc_bits (int *,struct inode*,struct buffer_head*,int ,scalar_t__,unsigned int,void (*) (unsigned int,unsigned long*)) ;
 int mlog_errno (int) ;
 int ocfs2_block_to_cluster_group (struct inode*,scalar_t__,scalar_t__*,int *) ;
 int ocfs2_blocks_to_clusters (int ,scalar_t__) ;
 scalar_t__ ocfs2_clusters_to_blocks (int ,int ) ;
 int ocfs2_local_alloc_seen_free_bits (int ,unsigned int) ;
 int trace_ocfs2_free_clusters (unsigned long long,unsigned long long,int ,unsigned int) ;

__attribute__((used)) static int _ocfs2_free_clusters(handle_t *handle,
    struct inode *bitmap_inode,
    struct buffer_head *bitmap_bh,
    u64 start_blk,
    unsigned int num_clusters,
    void (*undo_fn)(unsigned int bit,
      unsigned long *bitmap))
{
 int status;
 u16 bg_start_bit;
 u64 bg_blkno;






 BUG_ON(start_blk != ocfs2_clusters_to_blocks(bitmap_inode->i_sb,
    ocfs2_blocks_to_clusters(bitmap_inode->i_sb,
        start_blk)));


 ocfs2_block_to_cluster_group(bitmap_inode, start_blk, &bg_blkno,
         &bg_start_bit);

 trace_ocfs2_free_clusters((unsigned long long)bg_blkno,
   (unsigned long long)start_blk,
   bg_start_bit, num_clusters);

 status = _ocfs2_free_suballoc_bits(handle, bitmap_inode, bitmap_bh,
        bg_start_bit, bg_blkno,
        num_clusters, undo_fn);
 if (status < 0) {
  mlog_errno(status);
  goto out;
 }

 ocfs2_local_alloc_seen_free_bits(OCFS2_SB(bitmap_inode->i_sb),
      num_clusters);

out:
 if (status)
  mlog_errno(status);
 return status;
}
