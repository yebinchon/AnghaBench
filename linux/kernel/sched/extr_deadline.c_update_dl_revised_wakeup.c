
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sched_dl_entity {int deadline; int runtime; int dl_density; } ;
struct rq {int dummy; } ;


 int BW_SHIFT ;
 int WARN_ON (int ) ;
 int dl_time_before (int,int) ;
 int rq_clock (struct rq*) ;

__attribute__((used)) static void
update_dl_revised_wakeup(struct sched_dl_entity *dl_se, struct rq *rq)
{
 u64 laxity = dl_se->deadline - rq_clock(rq);







 WARN_ON(dl_time_before(dl_se->deadline, rq_clock(rq)));

 dl_se->runtime = (dl_se->dl_density * laxity) >> BW_SHIFT;
}
