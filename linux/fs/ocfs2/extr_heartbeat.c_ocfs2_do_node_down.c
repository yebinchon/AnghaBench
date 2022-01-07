
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int node_num; int cconn; } ;


 int BUG_ON (int) ;
 int ocfs2_recovery_thread (struct ocfs2_super*,int) ;
 int trace_ocfs2_do_node_down (int) ;

void ocfs2_do_node_down(int node_num, void *data)
{
 struct ocfs2_super *osb = data;

 BUG_ON(osb->node_num == node_num);

 trace_ocfs2_do_node_down(node_num);

 if (!osb->cconn) {






  return;
 }

 ocfs2_recovery_thread(osb, node_num);
}
