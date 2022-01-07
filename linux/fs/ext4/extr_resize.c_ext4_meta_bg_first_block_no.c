
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef int ext4_group_t ;
typedef int ext4_fsblk_t ;


 int ext4_group_first_block_no (struct super_block*,int ) ;
 int ext4_meta_bg_first_group (struct super_block*,int ) ;

__attribute__((used)) static ext4_fsblk_t ext4_meta_bg_first_block_no(struct super_block *sb,
          ext4_group_t group) {
 group = ext4_meta_bg_first_group(sb, group);
 return ext4_group_first_block_no(sb, group);
}
