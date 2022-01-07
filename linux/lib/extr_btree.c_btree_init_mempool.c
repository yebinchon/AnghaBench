
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {int * mempool; } ;
typedef int mempool_t ;


 int __btree_init (struct btree_head*) ;

void btree_init_mempool(struct btree_head *head, mempool_t *mempool)
{
 __btree_init(head);
 head->mempool = mempool;
}
