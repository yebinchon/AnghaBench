
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct cake_sched_data {TYPE_1__* tins; struct cake_heap_entry* overflow_heap; } ;
struct cake_heap_entry {size_t t; size_t b; } ;
struct TYPE_2__ {int * backlogs; } ;



__attribute__((used)) static u32 cake_heap_get_backlog(const struct cake_sched_data *q, u16 i)
{
 struct cake_heap_entry ii = q->overflow_heap[i];

 return q->tins[ii.t].backlogs[ii.b];
}
