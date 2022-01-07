
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct omfs_sb_info {unsigned long** s_imap; int s_bitmap_ino; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int ENOMEM ;
 struct omfs_sb_info* OMFS_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int clear_bit (int,unsigned long*) ;
 scalar_t__ clus_to_blk (struct omfs_sb_info*,int ) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 struct buffer_head* sb_bread (struct super_block*,scalar_t__) ;
 int set_bit (int,unsigned long*) ;

__attribute__((used)) static int set_run(struct super_block *sb, int map,
  int nbits, int bit, int count, int set)
{
 int i;
 int err;
 struct buffer_head *bh;
 struct omfs_sb_info *sbi = OMFS_SB(sb);

  err = -ENOMEM;
 bh = sb_bread(sb, clus_to_blk(sbi, sbi->s_bitmap_ino) + map);
 if (!bh)
  goto out;

 for (i = 0; i < count; i++, bit++) {
  if (bit >= nbits) {
   bit = 0;
   map++;

   mark_buffer_dirty(bh);
   brelse(bh);
   bh = sb_bread(sb,
    clus_to_blk(sbi, sbi->s_bitmap_ino) + map);
   if (!bh)
    goto out;
  }
  if (set) {
   set_bit(bit, sbi->s_imap[map]);
   set_bit(bit, (unsigned long *)bh->b_data);
  } else {
   clear_bit(bit, sbi->s_imap[map]);
   clear_bit(bit, (unsigned long *)bh->b_data);
  }
 }
 mark_buffer_dirty(bh);
 brelse(bh);
 err = 0;
out:
 return err;
}
