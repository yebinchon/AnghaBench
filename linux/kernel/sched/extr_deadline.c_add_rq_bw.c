
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {int dl_bw; } ;
struct dl_rq {int dummy; } ;


 int __add_rq_bw (int ,struct dl_rq*) ;
 int dl_entity_is_special (struct sched_dl_entity*) ;

__attribute__((used)) static inline
void add_rq_bw(struct sched_dl_entity *dl_se, struct dl_rq *dl_rq)
{
 if (!dl_entity_is_special(dl_se))
  __add_rq_bw(dl_se->dl_bw, dl_rq);
}
