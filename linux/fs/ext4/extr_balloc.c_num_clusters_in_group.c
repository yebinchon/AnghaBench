
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int ext4_group_t ;
struct TYPE_3__ {int s_es; } ;


 unsigned int EXT4_BLOCKS_PER_GROUP (struct super_block*) ;
 unsigned int EXT4_NUM_B2C (TYPE_1__*,unsigned int) ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 unsigned int ext4_blocks_count (int ) ;
 int ext4_get_groups_count (struct super_block*) ;
 unsigned int ext4_group_first_block_no (struct super_block*,int) ;

__attribute__((used)) static unsigned int num_clusters_in_group(struct super_block *sb,
       ext4_group_t block_group)
{
 unsigned int blocks;

 if (block_group == ext4_get_groups_count(sb) - 1) {






  blocks = ext4_blocks_count(EXT4_SB(sb)->s_es) -
   ext4_group_first_block_no(sb, block_group);
 } else
  blocks = EXT4_BLOCKS_PER_GROUP(sb);
 return EXT4_NUM_B2C(EXT4_SB(sb), blocks);
}
