
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct fatent_operations {int (* ent_set_ptr ) (struct fat_entry*,int) ;} ;
struct fat_entry {int nr_bhs; int * bhs; int fat_inode; } ;
typedef scalar_t__ sector_t ;
typedef int llu ;
struct TYPE_2__ {scalar_t__ fat_start; int fat_inode; struct fatent_operations* fatent_ops; } ;


 int EIO ;
 int KERN_ERR ;
 TYPE_1__* MSDOS_SB (struct super_block*) ;
 int WARN_ON (int) ;
 int fat_msg (struct super_block*,int ,char*,int ) ;
 int sb_bread (struct super_block*,scalar_t__) ;
 int stub1 (struct fat_entry*,int) ;

__attribute__((used)) static int fat_ent_bread(struct super_block *sb, struct fat_entry *fatent,
    int offset, sector_t blocknr)
{
 const struct fatent_operations *ops = MSDOS_SB(sb)->fatent_ops;

 WARN_ON(blocknr < MSDOS_SB(sb)->fat_start);
 fatent->fat_inode = MSDOS_SB(sb)->fat_inode;
 fatent->bhs[0] = sb_bread(sb, blocknr);
 if (!fatent->bhs[0]) {
  fat_msg(sb, KERN_ERR, "FAT read failed (blocknr %llu)",
         (llu)blocknr);
  return -EIO;
 }
 fatent->nr_bhs = 1;
 ops->ent_set_ptr(fatent, offset);
 return 0;
}
