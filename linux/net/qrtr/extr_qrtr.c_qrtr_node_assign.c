
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qrtr_node {unsigned int nid; } ;


 unsigned int QRTR_EP_NID_AUTO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qrtr_node_lock ;
 int qrtr_nodes ;
 int radix_tree_insert (int *,unsigned int,struct qrtr_node*) ;

__attribute__((used)) static void qrtr_node_assign(struct qrtr_node *node, unsigned int nid)
{
 if (node->nid != QRTR_EP_NID_AUTO || nid == QRTR_EP_NID_AUTO)
  return;

 mutex_lock(&qrtr_node_lock);
 radix_tree_insert(&qrtr_nodes, nid, node);
 node->nid = nid;
 mutex_unlock(&qrtr_node_lock);
}
