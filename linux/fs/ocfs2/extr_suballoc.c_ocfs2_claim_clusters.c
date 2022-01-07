
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_alloc_context {unsigned int ac_bits_wanted; unsigned int ac_bits_given; } ;
typedef int handle_t ;


 int __ocfs2_claim_clusters (int *,struct ocfs2_alloc_context*,int ,unsigned int,int *,int *) ;

int ocfs2_claim_clusters(handle_t *handle,
    struct ocfs2_alloc_context *ac,
    u32 min_clusters,
    u32 *cluster_start,
    u32 *num_clusters)
{
 unsigned int bits_wanted = ac->ac_bits_wanted - ac->ac_bits_given;

 return __ocfs2_claim_clusters(handle, ac, min_clusters,
          bits_wanted, cluster_start, num_clusters);
}
