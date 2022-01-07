
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct thread_stack {size_t cnt; TYPE_1__* stack; } ;
struct TYPE_2__ {scalar_t__ ret_addr; } ;



__attribute__((used)) static void thread_stack__pop(struct thread_stack *ts, u64 ret_addr)
{
 size_t i;
 for (i = ts->cnt; i; ) {
  if (ts->stack[--i].ret_addr == ret_addr) {
   ts->cnt = i;
   return;
  }
 }
}
