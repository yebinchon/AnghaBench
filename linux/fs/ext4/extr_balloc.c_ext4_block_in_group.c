
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef scalar_t__ ext4_group_t ;
typedef int ext4_fsblk_t ;


 scalar_t__ ext4_get_group_number (struct super_block*,int ) ;

__attribute__((used)) static inline int ext4_block_in_group(struct super_block *sb,
          ext4_fsblk_t block,
          ext4_group_t block_group)
{
 ext4_group_t actual_group;

 actual_group = ext4_get_group_number(sb, block);
 return (actual_group == block_group) ? 1 : 0;
}
