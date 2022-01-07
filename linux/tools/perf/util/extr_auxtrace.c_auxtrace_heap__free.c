
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxtrace_heap {scalar_t__ heap_sz; scalar_t__ heap_cnt; int heap_array; } ;


 int zfree (int *) ;

void auxtrace_heap__free(struct auxtrace_heap *heap)
{
 zfree(&heap->heap_array);
 heap->heap_cnt = 0;
 heap->heap_sz = 0;
}
