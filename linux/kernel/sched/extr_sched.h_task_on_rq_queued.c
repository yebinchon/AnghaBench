
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ on_rq; } ;


 scalar_t__ TASK_ON_RQ_QUEUED ;

__attribute__((used)) static inline int task_on_rq_queued(struct task_struct *p)
{
 return p->on_rq == TASK_ON_RQ_QUEUED;
}
