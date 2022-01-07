
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exec_start; } ;
struct task_struct {TYPE_1__ se; } ;
struct rq {int dummy; } ;


 int rq_clock_task (struct rq*) ;

__attribute__((used)) static void set_next_task_stop(struct rq *rq, struct task_struct *stop)
{
 stop->se.exec_start = rq_clock_task(rq);
}
