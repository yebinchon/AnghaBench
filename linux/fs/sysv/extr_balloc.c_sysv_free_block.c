
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysv_zone_t ;
struct sysv_sb_info {scalar_t__ s_type; unsigned int s_firstdatazone; unsigned int s_nzones; unsigned int s_flc_size; int s_lock; int s_free_blocks; void** s_bcache_count; int * s_bcache; scalar_t__ s_block_base; } ;
struct super_block {int s_blocksize; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef void* __fs16 ;


 scalar_t__ FSTYPE_AFS ;
 struct sysv_sb_info* SYSV_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_fs16 (struct sysv_sb_info*,unsigned int) ;
 int dirty_sb (struct super_block*) ;
 unsigned int fs16_to_cpu (struct sysv_sb_info*,void*) ;
 int fs32_add (struct sysv_sb_info*,int ,int) ;
 unsigned int fs32_to_cpu (struct sysv_sb_info*,int ) ;
 int get_chunk (struct super_block*,struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int memcpy (int ,int *,unsigned int) ;
 int memset (scalar_t__,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int printk (char*) ;
 struct buffer_head* sb_getblk (struct super_block*,unsigned int) ;
 int set_buffer_uptodate (struct buffer_head*) ;

void sysv_free_block(struct super_block * sb, sysv_zone_t nr)
{
 struct sysv_sb_info * sbi = SYSV_SB(sb);
 struct buffer_head * bh;
 sysv_zone_t *blocks = sbi->s_bcache;
 unsigned count;
 unsigned block = fs32_to_cpu(sbi, nr);






 if (sbi->s_type == FSTYPE_AFS)
  return;

 if (block < sbi->s_firstdatazone || block >= sbi->s_nzones) {
  printk("sysv_free_block: trying to free block not in datazone\n");
  return;
 }

 mutex_lock(&sbi->s_lock);
 count = fs16_to_cpu(sbi, *sbi->s_bcache_count);

 if (count > sbi->s_flc_size) {
  printk("sysv_free_block: flc_count > flc_size\n");
  mutex_unlock(&sbi->s_lock);
  return;
 }




 if (count == sbi->s_flc_size || count == 0) {
  block += sbi->s_block_base;
  bh = sb_getblk(sb, block);
  if (!bh) {
   printk("sysv_free_block: getblk() failed\n");
   mutex_unlock(&sbi->s_lock);
   return;
  }
  memset(bh->b_data, 0, sb->s_blocksize);
  *(__fs16*)bh->b_data = cpu_to_fs16(sbi, count);
  memcpy(get_chunk(sb,bh), blocks, count * sizeof(sysv_zone_t));
  mark_buffer_dirty(bh);
  set_buffer_uptodate(bh);
  brelse(bh);
  count = 0;
 }
 sbi->s_bcache[count++] = nr;

 *sbi->s_bcache_count = cpu_to_fs16(sbi, count);
 fs32_add(sbi, sbi->s_free_blocks, 1);
 dirty_sb(sb);
 mutex_unlock(&sbi->s_lock);
}
