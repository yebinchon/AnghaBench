
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qrtr_node {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct qrtr_node* qrtr_node_acquire (struct qrtr_node*) ;
 int qrtr_node_lock ;
 int qrtr_nodes ;
 struct qrtr_node* radix_tree_lookup (int *,unsigned int) ;

__attribute__((used)) static struct qrtr_node *qrtr_node_lookup(unsigned int nid)
{
 struct qrtr_node *node;

 mutex_lock(&qrtr_node_lock);
 node = radix_tree_lookup(&qrtr_nodes, nid);
 node = qrtr_node_acquire(node);
 mutex_unlock(&qrtr_node_lock);

 return node;
}
