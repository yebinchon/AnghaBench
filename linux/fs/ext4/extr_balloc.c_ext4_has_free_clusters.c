
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_counter {int dummy; } ;
struct ext4_sb_info {int s_cluster_bits; int s_resgid; int s_resuid; int s_es; int s_resv_clusters; struct percpu_counter s_dirtyclusters_counter; struct percpu_counter s_freeclusters_counter; } ;
typedef scalar_t__ s64 ;


 int CAP_SYS_RESOURCE ;
 scalar_t__ EXT4_FREECLUSTERS_WATERMARK ;
 unsigned int EXT4_MB_USE_RESERVED ;
 unsigned int EXT4_MB_USE_ROOT_BLOCKS ;
 int GLOBAL_ROOT_GID ;
 scalar_t__ atomic64_read (int *) ;
 scalar_t__ capable (int ) ;
 int current_fsuid () ;
 int ext4_r_blocks_count (int ) ;
 int gid_eq (int ,int ) ;
 scalar_t__ in_group_p (int ) ;
 scalar_t__ percpu_counter_read_positive (struct percpu_counter*) ;
 scalar_t__ percpu_counter_sum_positive (struct percpu_counter*) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static int ext4_has_free_clusters(struct ext4_sb_info *sbi,
      s64 nclusters, unsigned int flags)
{
 s64 free_clusters, dirty_clusters, rsv, resv_clusters;
 struct percpu_counter *fcc = &sbi->s_freeclusters_counter;
 struct percpu_counter *dcc = &sbi->s_dirtyclusters_counter;

 free_clusters = percpu_counter_read_positive(fcc);
 dirty_clusters = percpu_counter_read_positive(dcc);
 resv_clusters = atomic64_read(&sbi->s_resv_clusters);





 rsv = (ext4_r_blocks_count(sbi->s_es) >> sbi->s_cluster_bits) +
       resv_clusters;

 if (free_clusters - (nclusters + rsv + dirty_clusters) <
     EXT4_FREECLUSTERS_WATERMARK) {
  free_clusters = percpu_counter_sum_positive(fcc);
  dirty_clusters = percpu_counter_sum_positive(dcc);
 }



 if (free_clusters >= (rsv + nclusters + dirty_clusters))
  return 1;


 if (uid_eq(sbi->s_resuid, current_fsuid()) ||
     (!gid_eq(sbi->s_resgid, GLOBAL_ROOT_GID) && in_group_p(sbi->s_resgid)) ||
     capable(CAP_SYS_RESOURCE) ||
     (flags & EXT4_MB_USE_ROOT_BLOCKS)) {

  if (free_clusters >= (nclusters + dirty_clusters +
          resv_clusters))
   return 1;
 }

 if (flags & EXT4_MB_USE_RESERVED) {
  if (free_clusters >= (nclusters + dirty_clusters))
   return 1;
 }

 return 0;
}
