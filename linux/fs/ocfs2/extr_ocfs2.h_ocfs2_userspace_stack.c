
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_cluster_stack; } ;


 int OCFS2_CLASSIC_CLUSTER_STACK ;
 int OCFS2_STACK_LABEL_LEN ;
 scalar_t__ memcmp (int ,int ,int ) ;
 scalar_t__ ocfs2_clusterinfo_valid (struct ocfs2_super*) ;

__attribute__((used)) static inline int ocfs2_userspace_stack(struct ocfs2_super *osb)
{
 if (ocfs2_clusterinfo_valid(osb) &&
     memcmp(osb->osb_cluster_stack, OCFS2_CLASSIC_CLUSTER_STACK,
     OCFS2_STACK_LABEL_LEN))
  return 1;
 return 0;
}
