
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ocfs2_info_free_chunk_list {unsigned int* fc_clusters; int * fc_chunks; } ;


 size_t OCFS2_INFO_MAX_HIST ;
 size_t __ilog2_u32 (unsigned int) ;

__attribute__((used)) static void o2ffg_update_histogram(struct ocfs2_info_free_chunk_list *hist,
       unsigned int chunksize)
{
 u32 index;

 index = __ilog2_u32(chunksize);
 if (index >= OCFS2_INFO_MAX_HIST)
  index = OCFS2_INFO_MAX_HIST - 1;

 hist->fc_chunks[index]++;
 hist->fc_clusters[index] += chunksize;
}
