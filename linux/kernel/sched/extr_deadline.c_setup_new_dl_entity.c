
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {int dl_runtime; int runtime; scalar_t__ dl_deadline; scalar_t__ deadline; scalar_t__ dl_throttled; int dl_boosted; } ;
struct rq {int dummy; } ;
struct dl_rq {int dummy; } ;


 int WARN_ON (int ) ;
 struct dl_rq* dl_rq_of_se (struct sched_dl_entity*) ;
 int dl_time_before (scalar_t__,scalar_t__) ;
 scalar_t__ rq_clock (struct rq*) ;
 struct rq* rq_of_dl_rq (struct dl_rq*) ;

__attribute__((used)) static inline void setup_new_dl_entity(struct sched_dl_entity *dl_se)
{
 struct dl_rq *dl_rq = dl_rq_of_se(dl_se);
 struct rq *rq = rq_of_dl_rq(dl_rq);

 WARN_ON(dl_se->dl_boosted);
 WARN_ON(dl_time_before(rq_clock(rq), dl_se->deadline));






 if (dl_se->dl_throttled)
  return;






 dl_se->deadline = rq_clock(rq) + dl_se->dl_deadline;
 dl_se->runtime = dl_se->dl_runtime;
}
