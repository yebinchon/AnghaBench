
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int dummy; } ;
struct cfs_rq {int dummy; } ;


 int cfs_rq_util_change (struct cfs_rq*,int ) ;

__attribute__((used)) static inline void update_load_avg(struct cfs_rq *cfs_rq, struct sched_entity *se, int not_used1)
{
 cfs_rq_util_change(cfs_rq, 0);
}
