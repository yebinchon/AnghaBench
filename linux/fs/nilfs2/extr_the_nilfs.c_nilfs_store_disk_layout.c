
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {scalar_t__ ns_sbsize; scalar_t__ ns_inode_size; scalar_t__ ns_blocksize; scalar_t__ ns_blocks_per_segment; int ns_r_segments_percentage; scalar_t__ ns_crc_seed; int ns_sb; int ns_first_data_block; scalar_t__ ns_first_ino; } ;
struct nilfs_super_block {int s_crc_seed; int s_nsegments; int s_r_segments_percentage; int s_first_data_block; int s_blocks_per_segment; int s_first_ino; int s_inode_size; int s_bytes; int s_minor_rev_level; int s_rev_level; } ;


 scalar_t__ BLOCK_SIZE ;
 int EINVAL ;
 int KERN_ERR ;
 int NILFS_CURRENT_REV ;
 int NILFS_MINOR_REV ;
 scalar_t__ NILFS_MIN_INODE_SIZE ;
 scalar_t__ NILFS_MIN_SUPP_REV ;
 scalar_t__ NILFS_SEG_MIN_BLOCKS ;
 void* le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int nilfs_msg (int ,int ,char*,scalar_t__,...) ;
 int nilfs_set_nsegments (struct the_nilfs*,int ) ;

__attribute__((used)) static int nilfs_store_disk_layout(struct the_nilfs *nilfs,
       struct nilfs_super_block *sbp)
{
 if (le32_to_cpu(sbp->s_rev_level) < NILFS_MIN_SUPP_REV) {
  nilfs_msg(nilfs->ns_sb, KERN_ERR,
     "unsupported revision (superblock rev.=%d.%d, current rev.=%d.%d). Please check the version of mkfs.nilfs(2).",
     le32_to_cpu(sbp->s_rev_level),
     le16_to_cpu(sbp->s_minor_rev_level),
     NILFS_CURRENT_REV, NILFS_MINOR_REV);
  return -EINVAL;
 }
 nilfs->ns_sbsize = le16_to_cpu(sbp->s_bytes);
 if (nilfs->ns_sbsize > BLOCK_SIZE)
  return -EINVAL;

 nilfs->ns_inode_size = le16_to_cpu(sbp->s_inode_size);
 if (nilfs->ns_inode_size > nilfs->ns_blocksize) {
  nilfs_msg(nilfs->ns_sb, KERN_ERR,
     "too large inode size: %d bytes",
     nilfs->ns_inode_size);
  return -EINVAL;
 } else if (nilfs->ns_inode_size < NILFS_MIN_INODE_SIZE) {
  nilfs_msg(nilfs->ns_sb, KERN_ERR,
     "too small inode size: %d bytes",
     nilfs->ns_inode_size);
  return -EINVAL;
 }

 nilfs->ns_first_ino = le32_to_cpu(sbp->s_first_ino);

 nilfs->ns_blocks_per_segment = le32_to_cpu(sbp->s_blocks_per_segment);
 if (nilfs->ns_blocks_per_segment < NILFS_SEG_MIN_BLOCKS) {
  nilfs_msg(nilfs->ns_sb, KERN_ERR,
     "too short segment: %lu blocks",
     nilfs->ns_blocks_per_segment);
  return -EINVAL;
 }

 nilfs->ns_first_data_block = le64_to_cpu(sbp->s_first_data_block);
 nilfs->ns_r_segments_percentage =
  le32_to_cpu(sbp->s_r_segments_percentage);
 if (nilfs->ns_r_segments_percentage < 1 ||
     nilfs->ns_r_segments_percentage > 99) {
  nilfs_msg(nilfs->ns_sb, KERN_ERR,
     "invalid reserved segments percentage: %lu",
     nilfs->ns_r_segments_percentage);
  return -EINVAL;
 }

 nilfs_set_nsegments(nilfs, le64_to_cpu(sbp->s_nsegments));
 nilfs->ns_crc_seed = le32_to_cpu(sbp->s_crc_seed);
 return 0;
}
