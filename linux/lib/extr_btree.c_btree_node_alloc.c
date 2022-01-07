
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {int mempool; } ;
typedef int gfp_t ;


 int NODESIZE ;
 scalar_t__ likely (unsigned long*) ;
 unsigned long* mempool_alloc (int ,int ) ;
 int memset (unsigned long*,int ,int ) ;

__attribute__((used)) static unsigned long *btree_node_alloc(struct btree_head *head, gfp_t gfp)
{
 unsigned long *node;

 node = mempool_alloc(head->mempool, gfp);
 if (likely(node))
  memset(node, 0, NODESIZE);
 return node;
}
