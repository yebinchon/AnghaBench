
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_free_extent {int fe_start; int fe_group; } ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int s_cluster_bits; } ;


 TYPE_1__* EXT4_SB (struct super_block*) ;
 scalar_t__ ext4_group_first_block_no (struct super_block*,int ) ;

__attribute__((used)) static inline ext4_fsblk_t ext4_grp_offs_to_block(struct super_block *sb,
     struct ext4_free_extent *fex)
{
 return ext4_group_first_block_no(sb, fex->fe_group) +
  (fex->fe_start << EXT4_SB(sb)->s_cluster_bits);
}
