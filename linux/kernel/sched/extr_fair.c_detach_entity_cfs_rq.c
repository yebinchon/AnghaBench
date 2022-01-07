
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int dummy; } ;
struct cfs_rq {int dummy; } ;


 struct cfs_rq* cfs_rq_of (struct sched_entity*) ;
 int detach_entity_load_avg (struct cfs_rq*,struct sched_entity*) ;
 int propagate_entity_cfs_rq (struct sched_entity*) ;
 int update_load_avg (struct cfs_rq*,struct sched_entity*,int ) ;
 int update_tg_load_avg (struct cfs_rq*,int) ;

__attribute__((used)) static void detach_entity_cfs_rq(struct sched_entity *se)
{
 struct cfs_rq *cfs_rq = cfs_rq_of(se);


 update_load_avg(cfs_rq, se, 0);
 detach_entity_load_avg(cfs_rq, se);
 update_tg_load_avg(cfs_rq, 0);
 propagate_entity_cfs_rq(se);
}
