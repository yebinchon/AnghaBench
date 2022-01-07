
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {unsigned long state; } ;


 unsigned long TASK_IDLE ;
 unsigned long TASK_UNINTERRUPTIBLE ;

__attribute__((used)) static inline bool
state_filter_match(unsigned long state_filter, struct task_struct *p)
{

 if (!state_filter)
  return 1;


 if (!(p->state & state_filter))
  return 0;





 if (state_filter == TASK_UNINTERRUPTIBLE && p->state == TASK_IDLE)
  return 0;

 return 1;
}
