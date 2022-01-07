
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; } ;
struct TYPE_2__ {int has_child_subreaper; } ;


 scalar_t__ is_child_reaper (int ) ;
 int task_pid (struct task_struct*) ;

__attribute__((used)) static int propagate_has_child_subreaper(struct task_struct *p, void *data)
{
 if (p->signal->has_child_subreaper ||
     is_child_reaper(task_pid(p)))
  return 0;

 p->signal->has_child_subreaper = 1;
 return 1;
}
