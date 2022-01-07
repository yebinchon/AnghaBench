
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fq_codel_sched_data {int flows_cnt; scalar_t__ memory_usage; int backlogs; struct fq_codel_flow* flows; int old_flows; int new_flows; } ;
struct fq_codel_flow {int cvars; int flowchain; } ;
struct TYPE_4__ {scalar_t__ backlog; } ;
struct TYPE_3__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_2__ qstats; TYPE_1__ q; } ;


 int INIT_LIST_HEAD (int *) ;
 int codel_vars_init (int *) ;
 int fq_codel_flow_purge (struct fq_codel_flow*) ;
 int memset (int ,int ,int) ;
 struct fq_codel_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void fq_codel_reset(struct Qdisc *sch)
{
 struct fq_codel_sched_data *q = qdisc_priv(sch);
 int i;

 INIT_LIST_HEAD(&q->new_flows);
 INIT_LIST_HEAD(&q->old_flows);
 for (i = 0; i < q->flows_cnt; i++) {
  struct fq_codel_flow *flow = q->flows + i;

  fq_codel_flow_purge(flow);
  INIT_LIST_HEAD(&flow->flowchain);
  codel_vars_init(&flow->cvars);
 }
 memset(q->backlogs, 0, q->flows_cnt * sizeof(u32));
 sch->q.qlen = 0;
 sch->qstats.backlog = 0;
 q->memory_usage = 0;
}
