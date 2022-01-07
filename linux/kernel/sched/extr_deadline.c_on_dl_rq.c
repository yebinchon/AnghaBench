
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {int rb_node; } ;


 int RB_EMPTY_NODE (int *) ;

__attribute__((used)) static inline int on_dl_rq(struct sched_dl_entity *dl_se)
{
 return !RB_EMPTY_NODE(&dl_se->rb_node);
}
