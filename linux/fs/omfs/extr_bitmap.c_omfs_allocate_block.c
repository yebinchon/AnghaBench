
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct super_block {int s_blocksize; } ;
struct omfs_sb_info {unsigned int s_imap_size; scalar_t__ s_bitmap_ino; int s_bitmap_lock; int * s_imap; } ;
struct buffer_head {scalar_t__ b_data; } ;


 struct omfs_sb_info* OMFS_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ clus_to_blk (struct omfs_sb_info*,scalar_t__) ;
 unsigned int do_div (unsigned int,int) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct buffer_head* sb_bread (struct super_block*,scalar_t__) ;
 int set_bit (unsigned int,unsigned long*) ;
 scalar_t__ test_and_set_bit (unsigned int,int ) ;

int omfs_allocate_block(struct super_block *sb, u64 block)
{
 struct buffer_head *bh;
 struct omfs_sb_info *sbi = OMFS_SB(sb);
 int bits_per_entry = 8 * sb->s_blocksize;
 unsigned int map, bit;
 int ret = 0;
 u64 tmp;

 tmp = block;
 bit = do_div(tmp, bits_per_entry);
 map = tmp;

 mutex_lock(&sbi->s_bitmap_lock);
 if (map >= sbi->s_imap_size || test_and_set_bit(bit, sbi->s_imap[map]))
  goto out;

 if (sbi->s_bitmap_ino > 0) {
  bh = sb_bread(sb, clus_to_blk(sbi, sbi->s_bitmap_ino) + map);
  if (!bh)
   goto out;

  set_bit(bit, (unsigned long *)bh->b_data);
  mark_buffer_dirty(bh);
  brelse(bh);
 }
 ret = 1;
out:
 mutex_unlock(&sbi->s_bitmap_lock);
 return ret;
}
