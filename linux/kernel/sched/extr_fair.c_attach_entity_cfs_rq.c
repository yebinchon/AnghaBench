
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_entity {TYPE_1__* parent; scalar_t__ depth; } ;
struct cfs_rq {int dummy; } ;
struct TYPE_2__ {scalar_t__ depth; } ;


 int ATTACH_AGE_LOAD ;
 int SKIP_AGE_LOAD ;
 int attach_entity_load_avg (struct cfs_rq*,struct sched_entity*,int ) ;
 struct cfs_rq* cfs_rq_of (struct sched_entity*) ;
 int propagate_entity_cfs_rq (struct sched_entity*) ;
 scalar_t__ sched_feat (int ) ;
 int update_load_avg (struct cfs_rq*,struct sched_entity*,int ) ;
 int update_tg_load_avg (struct cfs_rq*,int) ;

__attribute__((used)) static void attach_entity_cfs_rq(struct sched_entity *se)
{
 struct cfs_rq *cfs_rq = cfs_rq_of(se);
 update_load_avg(cfs_rq, se, sched_feat(ATTACH_AGE_LOAD) ? 0 : SKIP_AGE_LOAD);
 attach_entity_load_avg(cfs_rq, se, 0);
 update_tg_load_avg(cfs_rq, 0);
 propagate_entity_cfs_rq(se);
}
