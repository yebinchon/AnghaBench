
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {unsigned int s_blocksize_bits; } ;
struct inode {unsigned int i_size; } ;
struct ext4_super_block {int s_first_data_block; int s_journal_inum; } ;
struct ext4_sb_info {int s_overhead; TYPE_1__* s_journal; int journal_bdev; struct ext4_super_block* s_es; } ;
typedef scalar_t__ ext4_group_t ;
typedef int ext4_fsblk_t ;
struct TYPE_2__ {unsigned int j_maxlen; } ;


 int ENOMEM ;
 int EXT4_B2C (struct ext4_sb_info*,unsigned int) ;
 scalar_t__ EXT4_NUM_B2C (struct ext4_sb_info*,unsigned int) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int GFP_NOFS ;
 int KERN_ERR ;
 int PAGE_SIZE ;
 int cond_resched () ;
 int count_overhead (struct super_block*,scalar_t__,char*) ;
 scalar_t__ ext4_get_groups_count (struct super_block*) ;
 struct inode* ext4_get_journal_inode (struct super_block*,unsigned int) ;
 scalar_t__ ext4_has_feature_journal (struct super_block*) ;
 int ext4_msg (struct super_block*,int ,char*) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int iput (struct inode*) ;
 unsigned int le32_to_cpu (int ) ;
 int memset (char*,int ,int ) ;
 int smp_wmb () ;

int ext4_calculate_overhead(struct super_block *sb)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct ext4_super_block *es = sbi->s_es;
 struct inode *j_inode;
 unsigned int j_blocks, j_inum = le32_to_cpu(es->s_journal_inum);
 ext4_group_t i, ngroups = ext4_get_groups_count(sb);
 ext4_fsblk_t overhead = 0;
 char *buf = (char *) get_zeroed_page(GFP_NOFS);

 if (!buf)
  return -ENOMEM;
 overhead = EXT4_B2C(sbi, le32_to_cpu(es->s_first_data_block));




 for (i = 0; i < ngroups; i++) {
  int blks;

  blks = count_overhead(sb, i, buf);
  overhead += blks;
  if (blks)
   memset(buf, 0, PAGE_SIZE);
  cond_resched();
 }





 if (sbi->s_journal && !sbi->journal_bdev)
  overhead += EXT4_NUM_B2C(sbi, sbi->s_journal->j_maxlen);
 else if (ext4_has_feature_journal(sb) && !sbi->s_journal) {
  j_inode = ext4_get_journal_inode(sb, j_inum);
  if (j_inode) {
   j_blocks = j_inode->i_size >> sb->s_blocksize_bits;
   overhead += EXT4_NUM_B2C(sbi, j_blocks);
   iput(j_inode);
  } else {
   ext4_msg(sb, KERN_ERR, "can't get journal size");
  }
 }
 sbi->s_overhead = overhead;
 smp_wmb();
 free_page((unsigned long) buf);
 return 0;
}
