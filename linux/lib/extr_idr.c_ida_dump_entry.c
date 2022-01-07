
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_node {unsigned int shift; void** slots; } ;
struct ida_bitmap {int * bitmap; } ;


 int BITS_PER_LONG ;
 unsigned long IDA_BITMAP_BITS ;
 unsigned long IDA_BITMAP_LONGS ;
 unsigned int IDA_CHUNK_SHIFT ;
 unsigned int XA_CHUNK_SHIFT ;
 unsigned long XA_CHUNK_SIZE ;
 unsigned int ilog2 (int ) ;
 int pr_cont (char*,...) ;
 int xa_dump_index (unsigned long,unsigned int) ;
 int xa_dump_node (struct xa_node*) ;
 scalar_t__ xa_is_node (void*) ;
 scalar_t__ xa_is_value (void*) ;
 struct xa_node* xa_to_node (void*) ;
 int xa_to_value (void*) ;

__attribute__((used)) static void ida_dump_entry(void *entry, unsigned long index)
{
 unsigned long i;

 if (!entry)
  return;

 if (xa_is_node(entry)) {
  struct xa_node *node = xa_to_node(entry);
  unsigned int shift = node->shift + IDA_CHUNK_SHIFT +
   XA_CHUNK_SHIFT;

  xa_dump_index(index * IDA_BITMAP_BITS, shift);
  xa_dump_node(node);
  for (i = 0; i < XA_CHUNK_SIZE; i++)
   ida_dump_entry(node->slots[i],
     index | (i << node->shift));
 } else if (xa_is_value(entry)) {
  xa_dump_index(index * IDA_BITMAP_BITS, ilog2(BITS_PER_LONG));
  pr_cont("value: data %lx [%px]\n", xa_to_value(entry), entry);
 } else {
  struct ida_bitmap *bitmap = entry;

  xa_dump_index(index * IDA_BITMAP_BITS, IDA_CHUNK_SHIFT);
  pr_cont("bitmap: %p data", bitmap);
  for (i = 0; i < IDA_BITMAP_LONGS; i++)
   pr_cont(" %lx", bitmap->bitmap[i]);
  pr_cont("\n");
 }
}
