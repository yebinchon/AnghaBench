
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_dl_entity {int rb_node; } ;
struct task_struct {struct sched_dl_entity dl; } ;
struct TYPE_2__ {int * rb_leftmost; } ;
struct dl_rq {TYPE_1__ root; } ;



__attribute__((used)) static inline int is_leftmost(struct task_struct *p, struct dl_rq *dl_rq)
{
 struct sched_dl_entity *dl_se = &p->dl;

 return dl_rq->root.rb_leftmost == &dl_se->rb_node;
}
