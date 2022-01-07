
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_info_freefrag_stats {unsigned int ffs_max; unsigned int ffs_min; unsigned int ffs_avg; int ffs_free_chunks_real; } ;



__attribute__((used)) static void o2ffg_update_stats(struct ocfs2_info_freefrag_stats *stats,
          unsigned int chunksize)
{
 if (chunksize > stats->ffs_max)
  stats->ffs_max = chunksize;

 if (chunksize < stats->ffs_min)
  stats->ffs_min = chunksize;

 stats->ffs_avg += chunksize;
 stats->ffs_free_chunks_real++;
}
