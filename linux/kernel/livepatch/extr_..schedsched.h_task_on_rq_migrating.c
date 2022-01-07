
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int on_rq; } ;


 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ TASK_ON_RQ_MIGRATING ;

__attribute__((used)) static inline int task_on_rq_migrating(struct task_struct *p)
{
 return READ_ONCE(p->on_rq) == TASK_ON_RQ_MIGRATING;
}
