
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread_stack {int cnt; TYPE_2__* stack; } ;
struct TYPE_4__ {TYPE_1__* cp; } ;
struct TYPE_3__ {int in_kernel; } ;



__attribute__((used)) static bool thread_stack__in_kernel(struct thread_stack *ts)
{
 if (!ts->cnt)
  return 0;

 return ts->stack[ts->cnt - 1].cp->in_kernel;
}
