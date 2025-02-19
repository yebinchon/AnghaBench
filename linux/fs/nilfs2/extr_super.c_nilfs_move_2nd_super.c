
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct the_nilfs {scalar_t__ ns_first_data_block; int ns_blocksize_bits; int ns_blocksize; struct nilfs_super_block** ns_sbp; struct buffer_head** ns_sbh; int ns_sbsize; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef int sector_t ;
typedef int loff_t ;


 int EIO ;
 int KERN_WARNING ;
 int brelse (struct buffer_head*) ;
 int memcpy (struct nilfs_super_block*,struct nilfs_super_block*,int ) ;
 int memset (struct nilfs_super_block*,int ,int) ;
 int nilfs_msg (struct super_block*,int ,char*,unsigned long long) ;
 struct buffer_head* sb_getblk (struct super_block*,int) ;

__attribute__((used)) static int nilfs_move_2nd_super(struct super_block *sb, loff_t sb2off)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 struct buffer_head *nsbh;
 struct nilfs_super_block *nsbp;
 sector_t blocknr, newblocknr;
 unsigned long offset;
 int sb2i;
 int ret = 0;


 if (nilfs->ns_sbh[1] &&
     nilfs->ns_sbh[1]->b_blocknr > nilfs->ns_first_data_block) {
  sb2i = 1;
  blocknr = nilfs->ns_sbh[1]->b_blocknr;
 } else if (nilfs->ns_sbh[0]->b_blocknr > nilfs->ns_first_data_block) {
  sb2i = 0;
  blocknr = nilfs->ns_sbh[0]->b_blocknr;
 } else {
  sb2i = -1;
  blocknr = 0;
 }
 if (sb2i >= 0 && (u64)blocknr << nilfs->ns_blocksize_bits == sb2off)
  goto out;


 newblocknr = sb2off >> nilfs->ns_blocksize_bits;
 offset = sb2off & (nilfs->ns_blocksize - 1);
 nsbh = sb_getblk(sb, newblocknr);
 if (!nsbh) {
  nilfs_msg(sb, KERN_WARNING,
     "unable to move secondary superblock to block %llu",
     (unsigned long long)newblocknr);
  ret = -EIO;
  goto out;
 }
 nsbp = (void *)nsbh->b_data + offset;
 memset(nsbp, 0, nilfs->ns_blocksize);

 if (sb2i >= 0) {
  memcpy(nsbp, nilfs->ns_sbp[sb2i], nilfs->ns_sbsize);
  brelse(nilfs->ns_sbh[sb2i]);
  nilfs->ns_sbh[sb2i] = nsbh;
  nilfs->ns_sbp[sb2i] = nsbp;
 } else if (nilfs->ns_sbh[0]->b_blocknr < nilfs->ns_first_data_block) {

  nilfs->ns_sbh[1] = nsbh;
  nilfs->ns_sbp[1] = nsbp;
 } else {
  brelse(nsbh);
 }
out:
 return ret;
}
