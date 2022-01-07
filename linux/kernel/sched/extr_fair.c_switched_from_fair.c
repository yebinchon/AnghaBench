
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq {int dummy; } ;


 int detach_task_cfs_rq (struct task_struct*) ;

__attribute__((used)) static void switched_from_fair(struct rq *rq, struct task_struct *p)
{
 detach_task_cfs_rq(p);
}
