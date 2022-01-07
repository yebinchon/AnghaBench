
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct auxtrace_heap_item {scalar_t__ ordinal; unsigned int queue_nr; } ;



__attribute__((used)) static void auxtrace_heapify(struct auxtrace_heap_item *heap_array,
        unsigned int pos, unsigned int queue_nr,
        u64 ordinal)
{
 unsigned int parent;

 while (pos) {
  parent = (pos - 1) >> 1;
  if (heap_array[parent].ordinal <= ordinal)
   break;
  heap_array[pos] = heap_array[parent];
  pos = parent;
 }
 heap_array[pos].queue_nr = queue_nr;
 heap_array[pos].ordinal = ordinal;
}
