
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_stackflags; } ;


 int OCFS2_CLUSTER_O2CB_GLOBAL_HEARTBEAT ;
 scalar_t__ ocfs2_o2cb_stack (struct ocfs2_super*) ;

__attribute__((used)) static inline int ocfs2_cluster_o2cb_global_heartbeat(struct ocfs2_super *osb)
{
 return ocfs2_o2cb_stack(osb) &&
  (osb->osb_stackflags & OCFS2_CLUSTER_O2CB_GLOBAL_HEARTBEAT);
}
