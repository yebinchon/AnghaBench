
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct auxtrace_heap_item {int dummy; } ;
struct auxtrace_heap {unsigned int heap_sz; int heap_cnt; struct auxtrace_heap_item* heap_array; } ;


 unsigned int AUXTRACE_INIT_NR_QUEUES ;
 int ENOMEM ;
 int auxtrace_heapify (struct auxtrace_heap_item*,int ,unsigned int,int ) ;
 struct auxtrace_heap_item* realloc (struct auxtrace_heap_item*,unsigned int) ;

int auxtrace_heap__add(struct auxtrace_heap *heap, unsigned int queue_nr,
         u64 ordinal)
{
 struct auxtrace_heap_item *heap_array;

 if (queue_nr >= heap->heap_sz) {
  unsigned int heap_sz = AUXTRACE_INIT_NR_QUEUES;

  while (heap_sz <= queue_nr)
   heap_sz <<= 1;
  heap_array = realloc(heap->heap_array,
         heap_sz * sizeof(struct auxtrace_heap_item));
  if (!heap_array)
   return -ENOMEM;
  heap->heap_array = heap_array;
  heap->heap_sz = heap_sz;
 }

 auxtrace_heapify(heap->heap_array, heap->heap_cnt++, queue_nr, ordinal);

 return 0;
}
