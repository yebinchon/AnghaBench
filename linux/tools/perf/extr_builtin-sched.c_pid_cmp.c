
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_atoms {TYPE_1__* thread; } ;
struct TYPE_2__ {scalar_t__ tid; } ;



__attribute__((used)) static int pid_cmp(struct work_atoms *l, struct work_atoms *r)
{
 if (l->thread == r->thread)
  return 0;
 if (l->thread->tid < r->thread->tid)
  return -1;
 if (l->thread->tid > r->thread->tid)
  return 1;
 return (int)(l->thread - r->thread);
}
