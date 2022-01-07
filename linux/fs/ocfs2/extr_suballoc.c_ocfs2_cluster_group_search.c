
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_suballoc_result {scalar_t__ sr_bit_offset; scalar_t__ sr_bits; } ;
struct ocfs2_group_desc {int bg_bits; int bg_blkno; scalar_t__ bg_free_bits_count; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {unsigned int ip_clusters; } ;


 int BUG_ON (int) ;
 int ENOSPC ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int ocfs2_block_group_find_clear_bits (struct ocfs2_super*,struct buffer_head*,scalar_t__,unsigned int,struct ocfs2_suballoc_result*) ;
 unsigned int ocfs2_blocks_to_clusters (int ,scalar_t__) ;
 scalar_t__ ocfs2_clusters_to_blocks (int ,scalar_t__) ;
 int ocfs2_is_cluster_bitmap (struct inode*) ;
 int ocfs2_local_alloc_seen_free_bits (struct ocfs2_super*,scalar_t__) ;
 int trace_ocfs2_cluster_group_search_max_block (unsigned long long,unsigned long long) ;
 int trace_ocfs2_cluster_group_search_wrong_max_bits (unsigned long long,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int ocfs2_cluster_group_search(struct inode *inode,
          struct buffer_head *group_bh,
          u32 bits_wanted, u32 min_bits,
          u64 max_block,
          struct ocfs2_suballoc_result *res)
{
 int search = -ENOSPC;
 int ret;
 u64 blkoff;
 struct ocfs2_group_desc *gd = (struct ocfs2_group_desc *) group_bh->b_data;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 unsigned int max_bits, gd_cluster_off;

 BUG_ON(!ocfs2_is_cluster_bitmap(inode));

 if (gd->bg_free_bits_count) {
  max_bits = le16_to_cpu(gd->bg_bits);







  gd_cluster_off = ocfs2_blocks_to_clusters(inode->i_sb,
         le64_to_cpu(gd->bg_blkno));
  if ((gd_cluster_off + max_bits) >
      OCFS2_I(inode)->ip_clusters) {
   max_bits = OCFS2_I(inode)->ip_clusters - gd_cluster_off;
   trace_ocfs2_cluster_group_search_wrong_max_bits(
    (unsigned long long)le64_to_cpu(gd->bg_blkno),
    le16_to_cpu(gd->bg_bits),
    OCFS2_I(inode)->ip_clusters, max_bits);
  }

  ret = ocfs2_block_group_find_clear_bits(osb,
       group_bh, bits_wanted,
       max_bits, res);
  if (ret)
   return ret;

  if (max_block) {
   blkoff = ocfs2_clusters_to_blocks(inode->i_sb,
         gd_cluster_off +
         res->sr_bit_offset +
         res->sr_bits);
   trace_ocfs2_cluster_group_search_max_block(
    (unsigned long long)blkoff,
    (unsigned long long)max_block);
   if (blkoff > max_block)
    return -ENOSPC;
  }





  if (min_bits <= res->sr_bits)
   search = 0;
  else if (res->sr_bits) {




   ocfs2_local_alloc_seen_free_bits(osb, res->sr_bits);
  }
 }

 return search;
}
