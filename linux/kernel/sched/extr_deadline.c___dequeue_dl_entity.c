
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {int rb_node; } ;
struct dl_rq {int root; } ;


 int RB_CLEAR_NODE (int *) ;
 scalar_t__ RB_EMPTY_NODE (int *) ;
 int dec_dl_tasks (struct sched_dl_entity*,struct dl_rq*) ;
 struct dl_rq* dl_rq_of_se (struct sched_dl_entity*) ;
 int rb_erase_cached (int *,int *) ;

__attribute__((used)) static void __dequeue_dl_entity(struct sched_dl_entity *dl_se)
{
 struct dl_rq *dl_rq = dl_rq_of_se(dl_se);

 if (RB_EMPTY_NODE(&dl_se->rb_node))
  return;

 rb_erase_cached(&dl_se->rb_node, &dl_rq->root);
 RB_CLEAR_NODE(&dl_se->rb_node);

 dec_dl_tasks(dl_se, dl_rq);
}
