
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct fat_entry {int nr_bhs; int fat_inode; struct buffer_head** bhs; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ sector_t ;
typedef int llu ;
struct TYPE_2__ {scalar_t__ fat_start; int fat_inode; } ;


 int EIO ;
 int KERN_ERR ;
 TYPE_1__* MSDOS_SB (struct super_block*) ;
 int WARN_ON (int) ;
 int brelse (struct buffer_head*) ;
 int fat12_ent_set_ptr (struct fat_entry*,int) ;
 int fat_msg (struct super_block*,int ,char*,int ) ;
 struct buffer_head* sb_bread (struct super_block*,scalar_t__) ;

__attribute__((used)) static int fat12_ent_bread(struct super_block *sb, struct fat_entry *fatent,
      int offset, sector_t blocknr)
{
 struct buffer_head **bhs = fatent->bhs;

 WARN_ON(blocknr < MSDOS_SB(sb)->fat_start);
 fatent->fat_inode = MSDOS_SB(sb)->fat_inode;

 bhs[0] = sb_bread(sb, blocknr);
 if (!bhs[0])
  goto err;

 if ((offset + 1) < sb->s_blocksize)
  fatent->nr_bhs = 1;
 else {

  blocknr++;
  bhs[1] = sb_bread(sb, blocknr);
  if (!bhs[1])
   goto err_brelse;
  fatent->nr_bhs = 2;
 }
 fat12_ent_set_ptr(fatent, offset);
 return 0;

err_brelse:
 brelse(bhs[0]);
err:
 fat_msg(sb, KERN_ERR, "FAT read failed (blocknr %llu)", (llu)blocknr);
 return -EIO;
}
