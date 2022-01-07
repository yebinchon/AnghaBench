
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef unsigned int ext4_group_t ;
typedef scalar_t__ ext4_fsblk_t ;
typedef int __le32 ;


 int EFBIG ;
 int EINVAL ;
 int EXT4_ADDR_PER_BLOCK (struct super_block*) ;
 unsigned int EXT4_BLOCKS_PER_GROUP (struct super_block*) ;
 unsigned int ext4_list_backups (struct super_block*,unsigned int*,unsigned int*,unsigned int*) ;
 int ext4_warning (struct super_block*,char*,scalar_t__ const,unsigned int,scalar_t__ const) ;
 scalar_t__ const le32_to_cpu (int ) ;

__attribute__((used)) static int verify_reserved_gdb(struct super_block *sb,
          ext4_group_t end,
          struct buffer_head *primary)
{
 const ext4_fsblk_t blk = primary->b_blocknr;
 unsigned three = 1;
 unsigned five = 5;
 unsigned seven = 7;
 unsigned grp;
 __le32 *p = (__le32 *)primary->b_data;
 int gdbackups = 0;

 while ((grp = ext4_list_backups(sb, &three, &five, &seven)) < end) {
  if (le32_to_cpu(*p++) !=
      grp * EXT4_BLOCKS_PER_GROUP(sb) + blk){
   ext4_warning(sb, "reserved GDT %llu"
         " missing grp %d (%llu)",
         blk, grp,
         grp *
         (ext4_fsblk_t)EXT4_BLOCKS_PER_GROUP(sb) +
         blk);
   return -EINVAL;
  }
  if (++gdbackups > EXT4_ADDR_PER_BLOCK(sb))
   return -EFBIG;
 }

 return gdbackups;
}
