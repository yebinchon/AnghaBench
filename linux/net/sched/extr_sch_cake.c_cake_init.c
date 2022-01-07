
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct cake_tin_data {size_t* overflow_idx; struct cake_flow* flows; scalar_t__ decaying_flow_count; scalar_t__ bulk_flow_count; scalar_t__ sparse_flow_count; int decaying_flows; int old_flows; int new_flows; } ;
struct cake_sched_data {int interval; int target; int min_adjlen; int min_netlen; scalar_t__ rate_bps; scalar_t__ avg_peak_bandwidth; TYPE_1__* overflow_heap; struct cake_tin_data* tins; int filter_list; int block; int watchdog; scalar_t__ cur_flow; scalar_t__ cur_tin; int rate_flags; int flow_mode; int tin_mode; } ;
struct cake_flow {int cvars; int flowchain; } ;
struct Qdisc {int limit; } ;
struct TYPE_2__ {int t; int b; } ;


 int CAKE_DIFFSERV_DIFFSERV3 ;
 int CAKE_FLAG_SPLIT_GSO ;
 int CAKE_FLOW_TRIPLE ;
 int CAKE_MAX_TINS ;
 int CAKE_QUEUES ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cake_change (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;
 int cake_destroy (struct Qdisc*) ;
 int cake_reconfigure (struct Qdisc*) ;
 int cobalt_vars_init (int *) ;
 struct cake_tin_data* kvcalloc (int,int,int ) ;
 struct cake_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_init (int *,struct Qdisc*) ;
 int* quantum_div ;
 int tcf_block_get (int *,int *,struct Qdisc*,struct netlink_ext_ack*) ;

__attribute__((used)) static int cake_init(struct Qdisc *sch, struct nlattr *opt,
       struct netlink_ext_ack *extack)
{
 struct cake_sched_data *q = qdisc_priv(sch);
 int i, j, err;

 sch->limit = 10240;
 q->tin_mode = CAKE_DIFFSERV_DIFFSERV3;
 q->flow_mode = CAKE_FLOW_TRIPLE;

 q->rate_bps = 0;

 q->interval = 100000;
 q->target = 5000;


 q->rate_flags |= CAKE_FLAG_SPLIT_GSO;
 q->cur_tin = 0;
 q->cur_flow = 0;

 qdisc_watchdog_init(&q->watchdog, sch);

 if (opt) {
  int err = cake_change(sch, opt, extack);

  if (err)
   return err;
 }

 err = tcf_block_get(&q->block, &q->filter_list, sch, extack);
 if (err)
  return err;

 quantum_div[0] = ~0;
 for (i = 1; i <= CAKE_QUEUES; i++)
  quantum_div[i] = 65535 / i;

 q->tins = kvcalloc(CAKE_MAX_TINS, sizeof(struct cake_tin_data),
      GFP_KERNEL);
 if (!q->tins)
  goto nomem;

 for (i = 0; i < CAKE_MAX_TINS; i++) {
  struct cake_tin_data *b = q->tins + i;

  INIT_LIST_HEAD(&b->new_flows);
  INIT_LIST_HEAD(&b->old_flows);
  INIT_LIST_HEAD(&b->decaying_flows);
  b->sparse_flow_count = 0;
  b->bulk_flow_count = 0;
  b->decaying_flow_count = 0;

  for (j = 0; j < CAKE_QUEUES; j++) {
   struct cake_flow *flow = b->flows + j;
   u32 k = j * CAKE_MAX_TINS + i;

   INIT_LIST_HEAD(&flow->flowchain);
   cobalt_vars_init(&flow->cvars);

   q->overflow_heap[k].t = i;
   q->overflow_heap[k].b = j;
   b->overflow_idx[j] = k;
  }
 }

 cake_reconfigure(sch);
 q->avg_peak_bandwidth = q->rate_bps;
 q->min_netlen = ~0;
 q->min_adjlen = ~0;
 return 0;

nomem:
 cake_destroy(sch);
 return -ENOMEM;
}
