
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qrtr_node {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static struct qrtr_node *qrtr_node_acquire(struct qrtr_node *node)
{
 if (node)
  kref_get(&node->ref);
 return node;
}
