
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int run_node; } ;
struct cfs_rq {int tasks_timeline; } ;


 int rb_erase_cached (int *,int *) ;

__attribute__((used)) static void __dequeue_entity(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
 rb_erase_cached(&se->run_node, &cfs_rq->tasks_timeline);
}
