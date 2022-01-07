
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {int dummy; } ;


 int BUG () ;

__attribute__((used)) static void yield_task_stop(struct rq *rq)
{
 BUG();
}
