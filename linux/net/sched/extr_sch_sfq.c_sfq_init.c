
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfq_sched_data {int limit; int maxdepth; int divisor; int maxflows; int * slots; int * ht; int perturbation; scalar_t__ perturb_period; int quantum; int scaled_quantum; int * tail; scalar_t__ cur_depth; TYPE_1__* dep; int filter_list; int block; int perturb_timer; struct Qdisc* sch; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int flags; } ;
struct TYPE_2__ {void* prev; void* next; } ;


 int ENOMEM ;
 int SFQ_ALLOT_SIZE (int ) ;
 int SFQ_DEFAULT_FLOWS ;
 int SFQ_DEFAULT_HASH_DIVISOR ;
 int SFQ_EMPTY_SLOT ;
 int SFQ_MAX_DEPTH ;
 void* SFQ_MAX_FLOWS ;
 int TCQ_F_CAN_BYPASS ;
 int TIMER_DEFERRABLE ;
 int get_random_bytes (int *,int) ;
 int psched_mtu (int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;
 void* sfq_alloc (int) ;
 int sfq_change (struct Qdisc*,struct nlattr*) ;
 int sfq_link (struct sfq_sched_data*,int) ;
 int sfq_perturbation ;
 int slot_queue_init (int *) ;
 int tcf_block_get (int *,int *,struct Qdisc*,struct netlink_ext_ack*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int sfq_init(struct Qdisc *sch, struct nlattr *opt,
      struct netlink_ext_ack *extack)
{
 struct sfq_sched_data *q = qdisc_priv(sch);
 int i;
 int err;

 q->sch = sch;
 timer_setup(&q->perturb_timer, sfq_perturbation, TIMER_DEFERRABLE);

 err = tcf_block_get(&q->block, &q->filter_list, sch, extack);
 if (err)
  return err;

 for (i = 0; i < SFQ_MAX_DEPTH + 1; i++) {
  q->dep[i].next = i + SFQ_MAX_FLOWS;
  q->dep[i].prev = i + SFQ_MAX_FLOWS;
 }

 q->limit = SFQ_MAX_DEPTH;
 q->maxdepth = SFQ_MAX_DEPTH;
 q->cur_depth = 0;
 q->tail = ((void*)0);
 q->divisor = SFQ_DEFAULT_HASH_DIVISOR;
 q->maxflows = SFQ_DEFAULT_FLOWS;
 q->quantum = psched_mtu(qdisc_dev(sch));
 q->scaled_quantum = SFQ_ALLOT_SIZE(q->quantum);
 q->perturb_period = 0;
 get_random_bytes(&q->perturbation, sizeof(q->perturbation));

 if (opt) {
  int err = sfq_change(sch, opt);
  if (err)
   return err;
 }

 q->ht = sfq_alloc(sizeof(q->ht[0]) * q->divisor);
 q->slots = sfq_alloc(sizeof(q->slots[0]) * q->maxflows);
 if (!q->ht || !q->slots) {

  return -ENOMEM;
 }

 for (i = 0; i < q->divisor; i++)
  q->ht[i] = SFQ_EMPTY_SLOT;

 for (i = 0; i < q->maxflows; i++) {
  slot_queue_init(&q->slots[i]);
  sfq_link(q, i);
 }
 if (q->limit >= 1)
  sch->flags |= TCQ_F_CAN_BYPASS;
 else
  sch->flags &= ~TCQ_F_CAN_BYPASS;
 return 0;
}
