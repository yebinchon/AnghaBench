
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dl; } ;
struct rq {int dummy; } ;


 int dequeue_dl_entity (int *) ;
 int dequeue_pushable_dl_task (struct rq*,struct task_struct*) ;

__attribute__((used)) static void __dequeue_task_dl(struct rq *rq, struct task_struct *p, int flags)
{
 dequeue_dl_entity(&p->dl);
 dequeue_pushable_dl_task(rq, p);
}
