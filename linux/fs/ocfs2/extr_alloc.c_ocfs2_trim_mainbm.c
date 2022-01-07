
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct super_block {scalar_t__ s_blocksize; } ;
struct ocfs2_super {scalar_t__ s_clustersize_bits; scalar_t__ bitmap_cpg; scalar_t__ first_cluster_group_blkno; } ;
struct ocfs2_group_desc {int dummy; } ;
struct ocfs2_dinode {int i_clusters; } ;
struct inode {int dummy; } ;
struct fstrim_range {scalar_t__ start; scalar_t__ len; scalar_t__ minlen; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int EINVAL ;
 int EIO ;
 int GLOBAL_BITMAP_SYSTEM_INODE ;
 int OCFS2_INVALID_SLOT ;
 struct ocfs2_super* OCFS2_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_blocks_to_clusters (struct super_block*,scalar_t__) ;
 scalar_t__ ocfs2_clusters_to_blocks (struct super_block*,scalar_t__) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int ) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int ocfs2_read_group_descriptor (struct inode*,struct ocfs2_dinode*,scalar_t__,struct buffer_head**) ;
 int ocfs2_trim_group (struct super_block*,struct ocfs2_group_desc*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ ocfs2_which_cluster_group (struct inode*,scalar_t__) ;
 int trace_ocfs2_trim_mainbm (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static
int ocfs2_trim_mainbm(struct super_block *sb, struct fstrim_range *range)
{
 struct ocfs2_super *osb = OCFS2_SB(sb);
 u64 start, len, trimmed = 0, first_group, last_group = 0, group = 0;
 int ret, cnt;
 u32 first_bit, last_bit, minlen;
 struct buffer_head *main_bm_bh = ((void*)0);
 struct inode *main_bm_inode = ((void*)0);
 struct buffer_head *gd_bh = ((void*)0);
 struct ocfs2_dinode *main_bm;
 struct ocfs2_group_desc *gd = ((void*)0);

 start = range->start >> osb->s_clustersize_bits;
 len = range->len >> osb->s_clustersize_bits;
 minlen = range->minlen >> osb->s_clustersize_bits;

 if (minlen >= osb->bitmap_cpg || range->len < sb->s_blocksize)
  return -EINVAL;

 trace_ocfs2_trim_mainbm(start, len, minlen);

next_group:
 main_bm_inode = ocfs2_get_system_file_inode(osb,
          GLOBAL_BITMAP_SYSTEM_INODE,
          OCFS2_INVALID_SLOT);
 if (!main_bm_inode) {
  ret = -EIO;
  mlog_errno(ret);
  goto out;
 }

 inode_lock(main_bm_inode);

 ret = ocfs2_inode_lock(main_bm_inode, &main_bm_bh, 0);
 if (ret < 0) {
  mlog_errno(ret);
  goto out_mutex;
 }
 main_bm = (struct ocfs2_dinode *)main_bm_bh->b_data;




 if (!group) {
  if (start >= le32_to_cpu(main_bm->i_clusters)) {
   ret = -EINVAL;
   goto out_unlock;
  }

  if (start + len > le32_to_cpu(main_bm->i_clusters))
   len = le32_to_cpu(main_bm->i_clusters) - start;





  first_group = ocfs2_which_cluster_group(main_bm_inode, start);
  if (first_group == osb->first_cluster_group_blkno)
   first_bit = start;
  else
   first_bit = start - ocfs2_blocks_to_clusters(sb,
        first_group);
  last_group = ocfs2_which_cluster_group(main_bm_inode,
             start + len - 1);
  group = first_group;
 }

 do {
  if (first_bit + len >= osb->bitmap_cpg)
   last_bit = osb->bitmap_cpg;
  else
   last_bit = first_bit + len;

  ret = ocfs2_read_group_descriptor(main_bm_inode,
        main_bm, group,
        &gd_bh);
  if (ret < 0) {
   mlog_errno(ret);
   break;
  }

  gd = (struct ocfs2_group_desc *)gd_bh->b_data;
  cnt = ocfs2_trim_group(sb, gd, group,
           first_bit, last_bit, minlen);
  brelse(gd_bh);
  gd_bh = ((void*)0);
  if (cnt < 0) {
   ret = cnt;
   mlog_errno(ret);
   break;
  }

  trimmed += cnt;
  len -= osb->bitmap_cpg - first_bit;
  first_bit = 0;
  if (group == osb->first_cluster_group_blkno)
   group = ocfs2_clusters_to_blocks(sb, osb->bitmap_cpg);
  else
   group += ocfs2_clusters_to_blocks(sb, osb->bitmap_cpg);
 } while (0);

out_unlock:
 ocfs2_inode_unlock(main_bm_inode, 0);
 brelse(main_bm_bh);
 main_bm_bh = ((void*)0);
out_mutex:
 inode_unlock(main_bm_inode);
 iput(main_bm_inode);






 if (ret >= 0 && group <= last_group)
  goto next_group;
out:
 range->len = trimmed * sb->s_blocksize;
 return ret;
}
