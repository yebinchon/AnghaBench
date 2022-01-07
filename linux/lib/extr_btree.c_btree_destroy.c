
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {int * mempool; int node; } ;


 int mempool_destroy (int *) ;
 int mempool_free (int ,int *) ;

void btree_destroy(struct btree_head *head)
{
 mempool_free(head->node, head->mempool);
 mempool_destroy(head->mempool);
 head->mempool = ((void*)0);
}
