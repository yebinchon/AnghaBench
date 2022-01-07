
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef int ext4_group_t ;


 int EXT4_DESC_PER_BLOCK_BITS (struct super_block*) ;

__attribute__((used)) static ext4_group_t ext4_meta_bg_first_group(struct super_block *sb,
          ext4_group_t group) {
 return (group >> EXT4_DESC_PER_BLOCK_BITS(sb)) <<
        EXT4_DESC_PER_BLOCK_BITS(sb);
}
