
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
typedef int ext4_group_t ;


 int ext4_num_overhead_clusters (struct super_block*,int ,struct ext4_group_desc*) ;
 int num_clusters_in_group (struct super_block*,int ) ;

unsigned ext4_free_clusters_after_init(struct super_block *sb,
           ext4_group_t block_group,
           struct ext4_group_desc *gdp)
{
 return num_clusters_in_group(sb, block_group) -
  ext4_num_overhead_clusters(sb, block_group, gdp);
}
