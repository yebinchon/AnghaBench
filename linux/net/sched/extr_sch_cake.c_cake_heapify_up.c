
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct cake_sched_data {int dummy; } ;


 int CAKE_MAX_TINS ;
 int CAKE_QUEUES ;
 scalar_t__ cake_heap_get_backlog (struct cake_sched_data*,int) ;
 int cake_heap_swap (struct cake_sched_data*,int,int) ;

__attribute__((used)) static void cake_heapify_up(struct cake_sched_data *q, u16 i)
{
 while (i > 0 && i < CAKE_MAX_TINS * CAKE_QUEUES) {
  u16 p = (i - 1) >> 1;
  u32 ib = cake_heap_get_backlog(q, i);
  u32 pb = cake_heap_get_backlog(q, p);

  if (ib > pb) {
   cake_heap_swap(q, i, p);
   i = p;
  } else {
   break;
  }
 }
}
