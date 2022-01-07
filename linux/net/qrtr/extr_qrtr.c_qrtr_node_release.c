
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qrtr_node {int ref; } ;


 int __qrtr_node_release ;
 int kref_put_mutex (int *,int ,int *) ;
 int qrtr_node_lock ;

__attribute__((used)) static void qrtr_node_release(struct qrtr_node *node)
{
 if (!node)
  return;
 kref_put_mutex(&node->ref, __qrtr_node_release, &qrtr_node_lock);
}
