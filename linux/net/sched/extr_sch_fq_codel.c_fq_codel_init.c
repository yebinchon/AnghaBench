
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int ecn; void* mtu; } ;
struct fq_codel_sched_data {int flows_cnt; int memory_limit; int drop_batch_size; struct fq_codel_flow* flows; void* backlogs; int filter_list; int block; TYPE_1__ cparams; int cstats; int old_flows; int new_flows; void* quantum; } ;
struct fq_codel_flow {int cvars; int flowchain; } ;
struct Qdisc {int limit; int flags; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int TCQ_F_CAN_BYPASS ;
 int codel_params_init (TYPE_1__*) ;
 int codel_stats_init (int *) ;
 int codel_vars_init (int *) ;
 int fq_codel_change (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;
 void* kvcalloc (int,int,int ) ;
 int kvfree (struct fq_codel_flow*) ;
 void* psched_mtu (int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct fq_codel_sched_data* qdisc_priv (struct Qdisc*) ;
 int tcf_block_get (int *,int *,struct Qdisc*,struct netlink_ext_ack*) ;

__attribute__((used)) static int fq_codel_init(struct Qdisc *sch, struct nlattr *opt,
    struct netlink_ext_ack *extack)
{
 struct fq_codel_sched_data *q = qdisc_priv(sch);
 int i;
 int err;

 sch->limit = 10*1024;
 q->flows_cnt = 1024;
 q->memory_limit = 32 << 20;
 q->drop_batch_size = 64;
 q->quantum = psched_mtu(qdisc_dev(sch));
 INIT_LIST_HEAD(&q->new_flows);
 INIT_LIST_HEAD(&q->old_flows);
 codel_params_init(&q->cparams);
 codel_stats_init(&q->cstats);
 q->cparams.ecn = 1;
 q->cparams.mtu = psched_mtu(qdisc_dev(sch));

 if (opt) {
  err = fq_codel_change(sch, opt, extack);
  if (err)
   goto init_failure;
 }

 err = tcf_block_get(&q->block, &q->filter_list, sch, extack);
 if (err)
  goto init_failure;

 if (!q->flows) {
  q->flows = kvcalloc(q->flows_cnt,
        sizeof(struct fq_codel_flow),
        GFP_KERNEL);
  if (!q->flows) {
   err = -ENOMEM;
   goto init_failure;
  }
  q->backlogs = kvcalloc(q->flows_cnt, sizeof(u32), GFP_KERNEL);
  if (!q->backlogs) {
   err = -ENOMEM;
   goto alloc_failure;
  }
  for (i = 0; i < q->flows_cnt; i++) {
   struct fq_codel_flow *flow = q->flows + i;

   INIT_LIST_HEAD(&flow->flowchain);
   codel_vars_init(&flow->cvars);
  }
 }
 if (sch->limit >= 1)
  sch->flags |= TCQ_F_CAN_BYPASS;
 else
  sch->flags &= ~TCQ_F_CAN_BYPASS;
 return 0;

alloc_failure:
 kvfree(q->flows);
 q->flows = ((void*)0);
init_failure:
 q->flows_cnt = 0;
 return err;
}
