
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int on_cpu; } ;
struct rq {int dummy; } ;


 int task_current (struct rq*,struct task_struct*) ;

__attribute__((used)) static inline int task_running(struct rq *rq, struct task_struct *p)
{



 return task_current(rq, p);

}
