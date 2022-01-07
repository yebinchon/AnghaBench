
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int weight; } ;
struct sched_entity {int group_node; TYPE_1__ load; } ;
struct rq {int cfs_tasks; } ;
struct cfs_rq {int nr_running; int load; } ;


 int account_numa_enqueue (struct rq*,int ) ;
 scalar_t__ entity_is_task (struct sched_entity*) ;
 int list_add (int *,int *) ;
 struct rq* rq_of (struct cfs_rq*) ;
 int task_of (struct sched_entity*) ;
 int update_load_add (int *,int ) ;

__attribute__((used)) static void
account_entity_enqueue(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
 update_load_add(&cfs_rq->load, se->load.weight);
 cfs_rq->nr_running++;
}
