
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct super_block {int s_blocksize; } ;
struct omfs_sb_info {unsigned int s_imap_size; int s_bitmap_lock; } ;


 struct omfs_sb_info* OMFS_SB (struct super_block*) ;
 unsigned int do_div (unsigned int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_run (struct super_block*,unsigned int,int,unsigned int,int,int ) ;

int omfs_clear_range(struct super_block *sb, u64 block, int count)
{
 struct omfs_sb_info *sbi = OMFS_SB(sb);
 int bits_per_entry = 8 * sb->s_blocksize;
 u64 tmp;
 unsigned int map, bit;
 int ret;

 tmp = block;
 bit = do_div(tmp, bits_per_entry);
 map = tmp;

 if (map >= sbi->s_imap_size)
  return 0;

 mutex_lock(&sbi->s_bitmap_lock);
 ret = set_run(sb, map, bits_per_entry, bit, count, 0);
 mutex_unlock(&sbi->s_bitmap_lock);
 return ret;
}
