
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_sb_info {int s_dirtyclusters_counter; } ;
typedef int s64 ;


 int ENOSPC ;
 scalar_t__ ext4_has_free_clusters (struct ext4_sb_info*,int ,unsigned int) ;
 int percpu_counter_add (int *,int ) ;

int ext4_claim_free_clusters(struct ext4_sb_info *sbi,
        s64 nclusters, unsigned int flags)
{
 if (ext4_has_free_clusters(sbi, nclusters, flags)) {
  percpu_counter_add(&sbi->s_dirtyclusters_counter, nclusters);
  return 0;
 } else
  return -ENOSPC;
}
