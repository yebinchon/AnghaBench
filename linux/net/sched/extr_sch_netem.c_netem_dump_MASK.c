#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tc_netem_slot {unsigned int rate; int min_delay; int max_delay; int dist_jitter; scalar_t__ max_packets; scalar_t__ max_bytes; int /*<<< orphan*/  cell_overhead; int /*<<< orphan*/  cell_size; int /*<<< orphan*/  packet_overhead; int /*<<< orphan*/  correlation; int /*<<< orphan*/  probability; int /*<<< orphan*/  dup_corr; int /*<<< orphan*/  loss_corr; int /*<<< orphan*/  delay_corr; int /*<<< orphan*/  duplicate; int /*<<< orphan*/  gap; int /*<<< orphan*/  loss; int /*<<< orphan*/  limit; void* jitter; void* latency; } ;
struct tc_netem_reorder {unsigned int rate; int min_delay; int max_delay; int dist_jitter; scalar_t__ max_packets; scalar_t__ max_bytes; int /*<<< orphan*/  cell_overhead; int /*<<< orphan*/  cell_size; int /*<<< orphan*/  packet_overhead; int /*<<< orphan*/  correlation; int /*<<< orphan*/  probability; int /*<<< orphan*/  dup_corr; int /*<<< orphan*/  loss_corr; int /*<<< orphan*/  delay_corr; int /*<<< orphan*/  duplicate; int /*<<< orphan*/  gap; int /*<<< orphan*/  loss; int /*<<< orphan*/  limit; void* jitter; void* latency; } ;
struct tc_netem_rate {unsigned int rate; int min_delay; int max_delay; int dist_jitter; scalar_t__ max_packets; scalar_t__ max_bytes; int /*<<< orphan*/  cell_overhead; int /*<<< orphan*/  cell_size; int /*<<< orphan*/  packet_overhead; int /*<<< orphan*/  correlation; int /*<<< orphan*/  probability; int /*<<< orphan*/  dup_corr; int /*<<< orphan*/  loss_corr; int /*<<< orphan*/  delay_corr; int /*<<< orphan*/  duplicate; int /*<<< orphan*/  gap; int /*<<< orphan*/  loss; int /*<<< orphan*/  limit; void* jitter; void* latency; } ;
struct tc_netem_qopt {unsigned int rate; int min_delay; int max_delay; int dist_jitter; scalar_t__ max_packets; scalar_t__ max_bytes; int /*<<< orphan*/  cell_overhead; int /*<<< orphan*/  cell_size; int /*<<< orphan*/  packet_overhead; int /*<<< orphan*/  correlation; int /*<<< orphan*/  probability; int /*<<< orphan*/  dup_corr; int /*<<< orphan*/  loss_corr; int /*<<< orphan*/  delay_corr; int /*<<< orphan*/  duplicate; int /*<<< orphan*/  gap; int /*<<< orphan*/  loss; int /*<<< orphan*/  limit; void* jitter; void* latency; } ;
struct tc_netem_corrupt {unsigned int rate; int min_delay; int max_delay; int dist_jitter; scalar_t__ max_packets; scalar_t__ max_bytes; int /*<<< orphan*/  cell_overhead; int /*<<< orphan*/  cell_size; int /*<<< orphan*/  packet_overhead; int /*<<< orphan*/  correlation; int /*<<< orphan*/  probability; int /*<<< orphan*/  dup_corr; int /*<<< orphan*/  loss_corr; int /*<<< orphan*/  delay_corr; int /*<<< orphan*/  duplicate; int /*<<< orphan*/  gap; int /*<<< orphan*/  loss; int /*<<< orphan*/  limit; void* jitter; void* latency; } ;
struct tc_netem_corr {unsigned int rate; int min_delay; int max_delay; int dist_jitter; scalar_t__ max_packets; scalar_t__ max_bytes; int /*<<< orphan*/  cell_overhead; int /*<<< orphan*/  cell_size; int /*<<< orphan*/  packet_overhead; int /*<<< orphan*/  correlation; int /*<<< orphan*/  probability; int /*<<< orphan*/  dup_corr; int /*<<< orphan*/  loss_corr; int /*<<< orphan*/  delay_corr; int /*<<< orphan*/  duplicate; int /*<<< orphan*/  gap; int /*<<< orphan*/  loss; int /*<<< orphan*/  limit; void* jitter; void* latency; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  rho; } ;
struct TYPE_9__ {int /*<<< orphan*/  rho; } ;
struct TYPE_8__ {int /*<<< orphan*/  rho; } ;
struct TYPE_7__ {int /*<<< orphan*/  rho; } ;
struct TYPE_6__ {int /*<<< orphan*/  rho; } ;
struct netem_sched_data {unsigned long long rate; struct tc_netem_slot slot_config; scalar_t__ ecn; int /*<<< orphan*/  cell_overhead; int /*<<< orphan*/  cell_size; int /*<<< orphan*/  packet_overhead; TYPE_5__ corrupt_cor; int /*<<< orphan*/  corrupt; TYPE_4__ reorder_cor; int /*<<< orphan*/  reorder; TYPE_3__ dup_cor; TYPE_2__ loss_cor; TYPE_1__ delay_cor; struct tc_netem_slot jitter; struct tc_netem_slot latency; int /*<<< orphan*/  duplicate; int /*<<< orphan*/  gap; int /*<<< orphan*/  loss; int /*<<< orphan*/  limit; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  slot ;
typedef  int /*<<< orphan*/  reorder ;
typedef  int /*<<< orphan*/  rate ;
typedef  int /*<<< orphan*/  qopt ;
typedef  int /*<<< orphan*/  corrupt ;
typedef  int /*<<< orphan*/  cor ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct tc_netem_slot) ; 
 int /*<<< orphan*/  TCA_NETEM_CORR ; 
 int /*<<< orphan*/  TCA_NETEM_CORRUPT ; 
 int /*<<< orphan*/  TCA_NETEM_ECN ; 
 int /*<<< orphan*/  TCA_NETEM_JITTER64 ; 
 int /*<<< orphan*/  TCA_NETEM_LATENCY64 ; 
 int /*<<< orphan*/  TCA_NETEM_PAD ; 
 int /*<<< orphan*/  TCA_NETEM_RATE ; 
 int /*<<< orphan*/  TCA_NETEM_RATE64 ; 
 int /*<<< orphan*/  TCA_NETEM_REORDER ; 
 int /*<<< orphan*/  TCA_NETEM_SLOT ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  UINT_MAX ; 
 scalar_t__ FUNC1 (struct netem_sched_data const*,struct sk_buff*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct nlattr*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_netem_slot*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  psched_tdiff_t ; 
 struct netem_sched_data* FUNC8 (struct Qdisc*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC10(struct Qdisc *sch, struct sk_buff *skb)
{
	const struct netem_sched_data *q = FUNC8(sch);
	struct nlattr *nla = (struct nlattr *) FUNC9(skb);
	struct tc_netem_qopt qopt;
	struct tc_netem_corr cor;
	struct tc_netem_reorder reorder;
	struct tc_netem_corrupt corrupt;
	struct tc_netem_rate rate;
	struct tc_netem_slot slot;

	qopt.latency = FUNC2(psched_tdiff_t, FUNC0(q->latency),
			     UINT_MAX);
	qopt.jitter = FUNC2(psched_tdiff_t, FUNC0(q->jitter),
			    UINT_MAX);
	qopt.limit = q->limit;
	qopt.loss = q->loss;
	qopt.gap = q->gap;
	qopt.duplicate = q->duplicate;
	if (FUNC4(skb, TCA_OPTIONS, sizeof(qopt), &qopt))
		goto nla_put_failure;

	if (FUNC4(skb, TCA_NETEM_LATENCY64, sizeof(q->latency), &q->latency))
		goto nla_put_failure;

	if (FUNC4(skb, TCA_NETEM_JITTER64, sizeof(q->jitter), &q->jitter))
		goto nla_put_failure;

	cor.delay_corr = q->delay_cor.rho;
	cor.loss_corr = q->loss_cor.rho;
	cor.dup_corr = q->dup_cor.rho;
	if (FUNC4(skb, TCA_NETEM_CORR, sizeof(cor), &cor))
		goto nla_put_failure;

	reorder.probability = q->reorder;
	reorder.correlation = q->reorder_cor.rho;
	if (FUNC4(skb, TCA_NETEM_REORDER, sizeof(reorder), &reorder))
		goto nla_put_failure;

	corrupt.probability = q->corrupt;
	corrupt.correlation = q->corrupt_cor.rho;
	if (FUNC4(skb, TCA_NETEM_CORRUPT, sizeof(corrupt), &corrupt))
		goto nla_put_failure;

	if (q->rate >= (1ULL << 32)) {
		if (FUNC6(skb, TCA_NETEM_RATE64, q->rate,
				      TCA_NETEM_PAD))
			goto nla_put_failure;
		rate.rate = ~0U;
	} else {
		rate.rate = q->rate;
	}
	rate.packet_overhead = q->packet_overhead;
	rate.cell_size = q->cell_size;
	rate.cell_overhead = q->cell_overhead;
	if (FUNC4(skb, TCA_NETEM_RATE, sizeof(rate), &rate))
		goto nla_put_failure;

	if (q->ecn && FUNC5(skb, TCA_NETEM_ECN, q->ecn))
		goto nla_put_failure;

	if (FUNC1(q, skb) != 0)
		goto nla_put_failure;

	if (q->slot_config.min_delay | q->slot_config.max_delay |
	    q->slot_config.dist_jitter) {
		slot = q->slot_config;
		if (slot.max_packets == INT_MAX)
			slot.max_packets = 0;
		if (slot.max_bytes == INT_MAX)
			slot.max_bytes = 0;
		if (FUNC4(skb, TCA_NETEM_SLOT, sizeof(slot), &slot))
			goto nla_put_failure;
	}

	return FUNC3(skb, nla);

nla_put_failure:
	FUNC7(skb, nla);
	return -1;
}