
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {unsigned long order; unsigned long index; } ;


 unsigned long BITS_PER_LONG ;
 int assert (int) ;
 int radix_tree_is_internal_node (struct item*) ;

void item_sanity(struct item *item, unsigned long index)
{
 unsigned long mask;
 assert(!radix_tree_is_internal_node(item));
 assert(item->order < BITS_PER_LONG);
 mask = (1UL << item->order) - 1;
 assert((item->index | mask) == (index | mask));
}
