
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq {int dummy; } ;


 int BUG () ;

__attribute__((used)) static void
prio_changed_idle(struct rq *rq, struct task_struct *p, int oldprio)
{
 BUG();
}
