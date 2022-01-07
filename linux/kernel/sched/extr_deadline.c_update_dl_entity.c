
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {int dl_runtime; int runtime; scalar_t__ dl_deadline; scalar_t__ deadline; int dl_boosted; } ;
struct rq {int dummy; } ;
struct dl_rq {int dummy; } ;


 scalar_t__ dl_entity_overflow (struct sched_dl_entity*,struct sched_dl_entity*,scalar_t__) ;
 int dl_is_implicit (struct sched_dl_entity*) ;
 struct dl_rq* dl_rq_of_se (struct sched_dl_entity*) ;
 scalar_t__ dl_time_before (scalar_t__,scalar_t__) ;
 scalar_t__ rq_clock (struct rq*) ;
 struct rq* rq_of_dl_rq (struct dl_rq*) ;
 scalar_t__ unlikely (int) ;
 int update_dl_revised_wakeup (struct sched_dl_entity*,struct rq*) ;

__attribute__((used)) static void update_dl_entity(struct sched_dl_entity *dl_se,
        struct sched_dl_entity *pi_se)
{
 struct dl_rq *dl_rq = dl_rq_of_se(dl_se);
 struct rq *rq = rq_of_dl_rq(dl_rq);

 if (dl_time_before(dl_se->deadline, rq_clock(rq)) ||
     dl_entity_overflow(dl_se, pi_se, rq_clock(rq))) {

  if (unlikely(!dl_is_implicit(dl_se) &&
        !dl_time_before(dl_se->deadline, rq_clock(rq)) &&
        !dl_se->dl_boosted)){
   update_dl_revised_wakeup(dl_se, rq);
   return;
  }

  dl_se->deadline = rq_clock(rq) + pi_se->dl_deadline;
  dl_se->runtime = pi_se->dl_runtime;
 }
}
