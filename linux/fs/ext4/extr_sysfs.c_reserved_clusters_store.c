
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_sb_info {unsigned long long s_cluster_bits; int s_resv_clusters; int s_es; } ;
typedef size_t ssize_t ;
typedef unsigned long long ext4_fsblk_t ;


 size_t EINVAL ;
 int atomic64_set (int *,unsigned long long) ;
 unsigned long long ext4_blocks_count (int ) ;
 int kstrtoull (int ,int ,unsigned long long*) ;
 int skip_spaces (char const*) ;

__attribute__((used)) static ssize_t reserved_clusters_store(struct ext4_sb_info *sbi,
       const char *buf, size_t count)
{
 unsigned long long val;
 ext4_fsblk_t clusters = (ext4_blocks_count(sbi->s_es) >>
     sbi->s_cluster_bits);
 int ret;

 ret = kstrtoull(skip_spaces(buf), 0, &val);
 if (ret || val >= clusters)
  return -EINVAL;

 atomic64_set(&sbi->s_resv_clusters, val);
 return count;
}
