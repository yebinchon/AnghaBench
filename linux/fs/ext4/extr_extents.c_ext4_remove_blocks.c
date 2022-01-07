
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_cluster {scalar_t__ state; scalar_t__ pclu; unsigned short lblk; } ;
struct inode {int i_sb; } ;
struct ext4_sb_info {unsigned short s_ext_blocks; unsigned short s_ext_min; unsigned short s_ext_max; scalar_t__ s_depth_max; unsigned short s_cluster_ratio; int s_ext_stats_lock; int s_ext_extents; int s_sb; } ;
struct ext4_extent {int ee_block; } ;
typedef int handle_t ;
typedef unsigned short ext4_lblk_t ;
typedef scalar_t__ ext4_fsblk_t ;


 scalar_t__ EXT4_B2C (struct ext4_sb_info*,scalar_t__) ;
 scalar_t__ EXT4_C2B (struct ext4_sb_info*,scalar_t__) ;
 int EXT4_FREE_BLOCKS_NOFREE_FIRST_CLUSTER ;
 int EXT4_FREE_BLOCKS_NOFREE_LAST_CLUSTER ;
 int EXT4_FREE_BLOCKS_RERESERVE_CLUSTER ;
 unsigned short EXT4_LBLK_CMASK (struct ext4_sb_info*,unsigned short) ;
 int EXT4_LBLK_COFF (struct ext4_sb_info*,unsigned short) ;
 scalar_t__ EXT4_PBLK_CMASK (struct ext4_sb_info*,scalar_t__) ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int ext4_error (int ,char*,unsigned short,unsigned short,unsigned short,unsigned short) ;
 unsigned short ext4_ext_get_actual_len (struct ext4_extent*) ;
 scalar_t__ ext4_ext_pblock (struct ext4_extent*) ;
 int ext4_free_blocks (int *,struct inode*,int *,scalar_t__,unsigned short,int) ;
 scalar_t__ ext4_is_pending (struct inode*,unsigned short) ;
 int ext4_rereserve_cluster (struct inode*,unsigned short) ;
 scalar_t__ ext_depth (struct inode*) ;
 int get_default_free_blocks_flags (struct inode*) ;
 scalar_t__ initial ;
 unsigned short le32_to_cpu (int ) ;
 scalar_t__ nofree ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ tofree ;
 int trace_ext4_remove_blocks (struct inode*,struct ext4_extent*,unsigned short,unsigned short,struct partial_cluster*) ;

__attribute__((used)) static int ext4_remove_blocks(handle_t *handle, struct inode *inode,
         struct ext4_extent *ex,
         struct partial_cluster *partial,
         ext4_lblk_t from, ext4_lblk_t to)
{
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 unsigned short ee_len = ext4_ext_get_actual_len(ex);
 ext4_fsblk_t last_pblk, pblk;
 ext4_lblk_t num;
 int flags;


 if (from < le32_to_cpu(ex->ee_block) ||
     to != le32_to_cpu(ex->ee_block) + ee_len - 1) {
  ext4_error(sbi->s_sb,
      "strange request: removal(2) %u-%u from %u:%u",
      from, to, le32_to_cpu(ex->ee_block), ee_len);
  return 0;
 }
 trace_ext4_remove_blocks(inode, ex, from, to, partial);





 last_pblk = ext4_ext_pblock(ex) + ee_len - 1;

 if (partial->state != initial &&
     partial->pclu != EXT4_B2C(sbi, last_pblk)) {
  if (partial->state == tofree) {
   flags = get_default_free_blocks_flags(inode);
   if (ext4_is_pending(inode, partial->lblk))
    flags |= EXT4_FREE_BLOCKS_RERESERVE_CLUSTER;
   ext4_free_blocks(handle, inode, ((void*)0),
      EXT4_C2B(sbi, partial->pclu),
      sbi->s_cluster_ratio, flags);
   if (flags & EXT4_FREE_BLOCKS_RERESERVE_CLUSTER)
    ext4_rereserve_cluster(inode, partial->lblk);
  }
  partial->state = initial;
 }

 num = le32_to_cpu(ex->ee_block) + ee_len - from;
 pblk = ext4_ext_pblock(ex) + ee_len - num;







 flags = get_default_free_blocks_flags(inode);


 if ((EXT4_LBLK_COFF(sbi, to) != sbi->s_cluster_ratio - 1) &&
     (EXT4_LBLK_CMASK(sbi, to) >= from) &&
     (partial->state != nofree)) {
  if (ext4_is_pending(inode, to))
   flags |= EXT4_FREE_BLOCKS_RERESERVE_CLUSTER;
  ext4_free_blocks(handle, inode, ((void*)0),
     EXT4_PBLK_CMASK(sbi, last_pblk),
     sbi->s_cluster_ratio, flags);
  if (flags & EXT4_FREE_BLOCKS_RERESERVE_CLUSTER)
   ext4_rereserve_cluster(inode, to);
  partial->state = initial;
  flags = get_default_free_blocks_flags(inode);
 }

 flags |= EXT4_FREE_BLOCKS_NOFREE_LAST_CLUSTER;







 flags |= EXT4_FREE_BLOCKS_NOFREE_FIRST_CLUSTER;
 ext4_free_blocks(handle, inode, ((void*)0), pblk, num, flags);


 if (partial->state != initial && partial->pclu != EXT4_B2C(sbi, pblk))
  partial->state = initial;
 if (EXT4_LBLK_COFF(sbi, from) && num == ee_len) {
  if (partial->state == initial) {
   partial->pclu = EXT4_B2C(sbi, pblk);
   partial->lblk = from;
   partial->state = tofree;
  }
 } else {
  partial->state = initial;
 }

 return 0;
}
