
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tc_netem_slot {unsigned int rate; int min_delay; int max_delay; int dist_jitter; scalar_t__ max_packets; scalar_t__ max_bytes; int cell_overhead; int cell_size; int packet_overhead; int correlation; int probability; int dup_corr; int loss_corr; int delay_corr; int duplicate; int gap; int loss; int limit; void* jitter; void* latency; } ;
struct tc_netem_reorder {unsigned int rate; int min_delay; int max_delay; int dist_jitter; scalar_t__ max_packets; scalar_t__ max_bytes; int cell_overhead; int cell_size; int packet_overhead; int correlation; int probability; int dup_corr; int loss_corr; int delay_corr; int duplicate; int gap; int loss; int limit; void* jitter; void* latency; } ;
struct tc_netem_rate {unsigned int rate; int min_delay; int max_delay; int dist_jitter; scalar_t__ max_packets; scalar_t__ max_bytes; int cell_overhead; int cell_size; int packet_overhead; int correlation; int probability; int dup_corr; int loss_corr; int delay_corr; int duplicate; int gap; int loss; int limit; void* jitter; void* latency; } ;
struct tc_netem_qopt {unsigned int rate; int min_delay; int max_delay; int dist_jitter; scalar_t__ max_packets; scalar_t__ max_bytes; int cell_overhead; int cell_size; int packet_overhead; int correlation; int probability; int dup_corr; int loss_corr; int delay_corr; int duplicate; int gap; int loss; int limit; void* jitter; void* latency; } ;
struct tc_netem_corrupt {unsigned int rate; int min_delay; int max_delay; int dist_jitter; scalar_t__ max_packets; scalar_t__ max_bytes; int cell_overhead; int cell_size; int packet_overhead; int correlation; int probability; int dup_corr; int loss_corr; int delay_corr; int duplicate; int gap; int loss; int limit; void* jitter; void* latency; } ;
struct tc_netem_corr {unsigned int rate; int min_delay; int max_delay; int dist_jitter; scalar_t__ max_packets; scalar_t__ max_bytes; int cell_overhead; int cell_size; int packet_overhead; int correlation; int probability; int dup_corr; int loss_corr; int delay_corr; int duplicate; int gap; int loss; int limit; void* jitter; void* latency; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_10__ {int rho; } ;
struct TYPE_9__ {int rho; } ;
struct TYPE_8__ {int rho; } ;
struct TYPE_7__ {int rho; } ;
struct TYPE_6__ {int rho; } ;
struct netem_sched_data {unsigned long long rate; struct tc_netem_slot slot_config; scalar_t__ ecn; int cell_overhead; int cell_size; int packet_overhead; TYPE_5__ corrupt_cor; int corrupt; TYPE_4__ reorder_cor; int reorder; TYPE_3__ dup_cor; TYPE_2__ loss_cor; TYPE_1__ delay_cor; struct tc_netem_slot jitter; struct tc_netem_slot latency; int duplicate; int gap; int loss; int limit; } ;
struct Qdisc {int dummy; } ;
typedef int slot ;
typedef int reorder ;
typedef int rate ;
typedef int qopt ;
typedef int corrupt ;
typedef int cor ;


 scalar_t__ INT_MAX ;
 int PSCHED_NS2TICKS (struct tc_netem_slot) ;
 int TCA_NETEM_CORR ;
 int TCA_NETEM_CORRUPT ;
 int TCA_NETEM_ECN ;
 int TCA_NETEM_JITTER64 ;
 int TCA_NETEM_LATENCY64 ;
 int TCA_NETEM_PAD ;
 int TCA_NETEM_RATE ;
 int TCA_NETEM_RATE64 ;
 int TCA_NETEM_REORDER ;
 int TCA_NETEM_SLOT ;
 int TCA_OPTIONS ;
 int UINT_MAX ;
 scalar_t__ dump_loss_model (struct netem_sched_data const*,struct sk_buff*) ;
 void* min_t (int ,int ,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_netem_slot*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,unsigned long long,int ) ;
 int nlmsg_trim (struct sk_buff*,struct nlattr*) ;
 int psched_tdiff_t ;
 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;
 scalar_t__ skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int netem_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 const struct netem_sched_data *q = qdisc_priv(sch);
 struct nlattr *nla = (struct nlattr *) skb_tail_pointer(skb);
 struct tc_netem_qopt qopt;
 struct tc_netem_corr cor;
 struct tc_netem_reorder reorder;
 struct tc_netem_corrupt corrupt;
 struct tc_netem_rate rate;
 struct tc_netem_slot slot;

 qopt.latency = min_t(psched_tdiff_t, PSCHED_NS2TICKS(q->latency),
        UINT_MAX);
 qopt.jitter = min_t(psched_tdiff_t, PSCHED_NS2TICKS(q->jitter),
       UINT_MAX);
 qopt.limit = q->limit;
 qopt.loss = q->loss;
 qopt.gap = q->gap;
 qopt.duplicate = q->duplicate;
 if (nla_put(skb, TCA_OPTIONS, sizeof(qopt), &qopt))
  goto nla_put_failure;

 if (nla_put(skb, TCA_NETEM_LATENCY64, sizeof(q->latency), &q->latency))
  goto nla_put_failure;

 if (nla_put(skb, TCA_NETEM_JITTER64, sizeof(q->jitter), &q->jitter))
  goto nla_put_failure;

 cor.delay_corr = q->delay_cor.rho;
 cor.loss_corr = q->loss_cor.rho;
 cor.dup_corr = q->dup_cor.rho;
 if (nla_put(skb, TCA_NETEM_CORR, sizeof(cor), &cor))
  goto nla_put_failure;

 reorder.probability = q->reorder;
 reorder.correlation = q->reorder_cor.rho;
 if (nla_put(skb, TCA_NETEM_REORDER, sizeof(reorder), &reorder))
  goto nla_put_failure;

 corrupt.probability = q->corrupt;
 corrupt.correlation = q->corrupt_cor.rho;
 if (nla_put(skb, TCA_NETEM_CORRUPT, sizeof(corrupt), &corrupt))
  goto nla_put_failure;

 if (q->rate >= (1ULL << 32)) {
  if (nla_put_u64_64bit(skb, TCA_NETEM_RATE64, q->rate,
          TCA_NETEM_PAD))
   goto nla_put_failure;
  rate.rate = ~0U;
 } else {
  rate.rate = q->rate;
 }
 rate.packet_overhead = q->packet_overhead;
 rate.cell_size = q->cell_size;
 rate.cell_overhead = q->cell_overhead;
 if (nla_put(skb, TCA_NETEM_RATE, sizeof(rate), &rate))
  goto nla_put_failure;

 if (q->ecn && nla_put_u32(skb, TCA_NETEM_ECN, q->ecn))
  goto nla_put_failure;

 if (dump_loss_model(q, skb) != 0)
  goto nla_put_failure;

 if (q->slot_config.min_delay | q->slot_config.max_delay |
     q->slot_config.dist_jitter) {
  slot = q->slot_config;
  if (slot.max_packets == INT_MAX)
   slot.max_packets = 0;
  if (slot.max_bytes == INT_MAX)
   slot.max_bytes = 0;
  if (nla_put(skb, TCA_NETEM_SLOT, sizeof(slot), &slot))
   goto nla_put_failure;
 }

 return nla_nest_end(skb, nla);

nla_put_failure:
 nlmsg_trim(skb, nla);
 return -1;
}
