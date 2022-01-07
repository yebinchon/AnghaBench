
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_cow_context {int inode; } ;


 int ocfs2_get_clusters (int ,int ,int *,int *,unsigned int*) ;

__attribute__((used)) static int ocfs2_di_get_clusters(struct ocfs2_cow_context *context,
     u32 v_cluster, u32 *p_cluster,
     u32 *num_clusters,
     unsigned int *extent_flags)
{
 return ocfs2_get_clusters(context->inode, v_cluster, p_cluster,
      num_clusters, extent_flags);
}
