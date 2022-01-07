
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rq {TYPE_2__* curr; } ;
struct TYPE_3__ {int dl_yielded; } ;
struct TYPE_4__ {TYPE_1__ dl; } ;


 int rq_clock_skip_update (struct rq*) ;
 int update_curr_dl (struct rq*) ;
 int update_rq_clock (struct rq*) ;

__attribute__((used)) static void yield_task_dl(struct rq *rq)
{






 rq->curr->dl.dl_yielded = 1;

 update_rq_clock(rq);
 update_curr_dl(rq);





 rq_clock_skip_update(rq);
}
