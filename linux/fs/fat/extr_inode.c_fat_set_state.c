
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct msdos_sb_info {scalar_t__ dirty; } ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {int state; } ;
struct fat_boot_sector {TYPE_2__ fat16; TYPE_1__ fat32; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int FAT_STATE_DIRTY ;
 int KERN_ERR ;
 int KERN_WARNING ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int fat_msg (struct super_block*,int ,char*) ;
 scalar_t__ is_fat32 (struct msdos_sb_info*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 struct buffer_head* sb_bread (struct super_block*,int ) ;
 scalar_t__ sb_rdonly (struct super_block*) ;
 int sync_dirty_buffer (struct buffer_head*) ;

__attribute__((used)) static void fat_set_state(struct super_block *sb,
   unsigned int set, unsigned int force)
{
 struct buffer_head *bh;
 struct fat_boot_sector *b;
 struct msdos_sb_info *sbi = MSDOS_SB(sb);


 if (sb_rdonly(sb) && !force)
  return;


 if (sbi->dirty) {

  if (set)
   fat_msg(sb, KERN_WARNING, "Volume was not properly "
    "unmounted. Some data may be corrupt. "
    "Please run fsck.");
  return;
 }

 bh = sb_bread(sb, 0);
 if (bh == ((void*)0)) {
  fat_msg(sb, KERN_ERR, "unable to read boot sector "
   "to mark fs as dirty");
  return;
 }

 b = (struct fat_boot_sector *) bh->b_data;

 if (is_fat32(sbi)) {
  if (set)
   b->fat32.state |= FAT_STATE_DIRTY;
  else
   b->fat32.state &= ~FAT_STATE_DIRTY;
 } else {
  if (set)
   b->fat16.state |= FAT_STATE_DIRTY;
  else
   b->fat16.state &= ~FAT_STATE_DIRTY;
 }

 mark_buffer_dirty(bh);
 sync_dirty_buffer(bh);
 brelse(bh);
}
