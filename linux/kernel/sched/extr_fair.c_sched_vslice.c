
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sched_entity {int dummy; } ;
struct cfs_rq {int dummy; } ;


 int calc_delta_fair (int ,struct sched_entity*) ;
 int sched_slice (struct cfs_rq*,struct sched_entity*) ;

__attribute__((used)) static u64 sched_vslice(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
 return calc_delta_fair(sched_slice(cfs_rq, se), se);
}
