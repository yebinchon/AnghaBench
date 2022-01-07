
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxtrace_heap_item {scalar_t__ ordinal; int queue_nr; } ;
struct auxtrace_heap {unsigned int heap_cnt; struct auxtrace_heap_item* heap_array; } ;


 int auxtrace_heapify (struct auxtrace_heap_item*,unsigned int,int ,scalar_t__) ;

void auxtrace_heap__pop(struct auxtrace_heap *heap)
{
 unsigned int pos, last, heap_cnt = heap->heap_cnt;
 struct auxtrace_heap_item *heap_array;

 if (!heap_cnt)
  return;

 heap->heap_cnt -= 1;

 heap_array = heap->heap_array;

 pos = 0;
 while (1) {
  unsigned int left, right;

  left = (pos << 1) + 1;
  if (left >= heap_cnt)
   break;
  right = left + 1;
  if (right >= heap_cnt) {
   heap_array[pos] = heap_array[left];
   return;
  }
  if (heap_array[left].ordinal < heap_array[right].ordinal) {
   heap_array[pos] = heap_array[left];
   pos = left;
  } else {
   heap_array[pos] = heap_array[right];
   pos = right;
  }
 }

 last = heap_cnt - 1;
 auxtrace_heapify(heap_array, pos, heap_array[last].queue_nr,
    heap_array[last].ordinal);
}
