
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {int mempool; } ;


 int ENOMEM ;
 int __btree_init (struct btree_head*) ;
 int btree_alloc ;
 int btree_free ;
 int mempool_create (int ,int ,int ,int *) ;

int btree_init(struct btree_head *head)
{
 __btree_init(head);
 head->mempool = mempool_create(0, btree_alloc, btree_free, ((void*)0));
 if (!head->mempool)
  return -ENOMEM;
 return 0;
}
