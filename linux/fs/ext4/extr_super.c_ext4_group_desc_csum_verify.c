
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_group_desc {scalar_t__ bg_checksum; } ;
typedef int __u32 ;


 scalar_t__ ext4_group_desc_csum (struct super_block*,int ,struct ext4_group_desc*) ;
 scalar_t__ ext4_has_group_desc_csum (struct super_block*) ;

int ext4_group_desc_csum_verify(struct super_block *sb, __u32 block_group,
    struct ext4_group_desc *gdp)
{
 if (ext4_has_group_desc_csum(sb) &&
     (gdp->bg_checksum != ext4_group_desc_csum(sb, block_group, gdp)))
  return 0;

 return 1;
}
