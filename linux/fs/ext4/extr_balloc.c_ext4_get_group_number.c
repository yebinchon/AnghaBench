
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int ext4_group_t ;
typedef int ext4_fsblk_t ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int s_first_data_block; } ;


 int EXT4_BLOCK_SIZE_BITS (struct super_block*) ;
 int EXT4_CLUSTER_BITS (struct super_block*) ;
 TYPE_2__* EXT4_SB (struct super_block*) ;
 int STD_GROUP_SIZE ;
 int ext4_get_group_no_and_offset (struct super_block*,int,int*,int *) ;
 int le32_to_cpu (int ) ;
 scalar_t__ test_opt2 (struct super_block*,int ) ;

ext4_group_t ext4_get_group_number(struct super_block *sb,
       ext4_fsblk_t block)
{
 ext4_group_t group;

 if (test_opt2(sb, STD_GROUP_SIZE))
  group = (block -
    le32_to_cpu(EXT4_SB(sb)->s_es->s_first_data_block)) >>
   (EXT4_BLOCK_SIZE_BITS(sb) + EXT4_CLUSTER_BITS(sb) + 3);
 else
  ext4_get_group_no_and_offset(sb, block, &group, ((void*)0));
 return group;
}
