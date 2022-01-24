#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  upcall ;
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct vport {struct datapath* dp; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct sw_flow_key {TYPE_1__ tp; } ;
struct sw_flow_actions {int dummy; } ;
struct sw_flow {int /*<<< orphan*/  sf_acts; } ;
struct sk_buff {int dummy; } ;
struct dp_upcall_info {int /*<<< orphan*/  mru; int /*<<< orphan*/  portid; int /*<<< orphan*/  cmd; } ;
struct dp_stats_percpu {int /*<<< orphan*/  syncp; int /*<<< orphan*/  n_mask_hit; int /*<<< orphan*/  n_hit; int /*<<< orphan*/  n_missed; } ;
struct datapath {int /*<<< orphan*/  table; int /*<<< orphan*/  stats_percpu; } ;
struct TYPE_4__ {int /*<<< orphan*/  mru; struct vport* input_vport; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  OVS_PACKET_CMD_MISS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct dp_upcall_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct datapath*) ; 
 int FUNC6 (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct dp_upcall_info*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct datapath*,struct sk_buff*,struct sw_flow_actions*,struct sw_flow_key*) ; 
 int /*<<< orphan*/  FUNC8 (struct sw_flow*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sw_flow* FUNC9 (int /*<<< orphan*/ *,struct sw_flow_key*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct vport const*,struct sk_buff*) ; 
 struct sw_flow_actions* FUNC11 (int /*<<< orphan*/ ) ; 
 struct dp_stats_percpu* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 

void FUNC16(struct sk_buff *skb, struct sw_flow_key *key)
{
	const struct vport *p = FUNC0(skb)->input_vport;
	struct datapath *dp = p->dp;
	struct sw_flow *flow;
	struct sw_flow_actions *sf_acts;
	struct dp_stats_percpu *stats;
	u64 *stats_counter;
	u32 n_mask_hit;
	int error;

	stats = FUNC12(dp->stats_percpu);

	/* Look up flow. */
	flow = FUNC9(&dp->table, key, &n_mask_hit);
	if (FUNC15(!flow)) {
		struct dp_upcall_info upcall;

		FUNC3(&upcall, 0, sizeof(upcall));
		upcall.cmd = OVS_PACKET_CMD_MISS;
		upcall.portid = FUNC10(p, skb);
		upcall.mru = FUNC0(skb)->mru;
		error = FUNC6(dp, skb, key, &upcall, 0);
		if (FUNC15(error))
			FUNC2(skb);
		else
			FUNC1(skb);
		stats_counter = &stats->n_missed;
		goto out;
	}

	FUNC8(flow, key->tp.flags, skb);
	sf_acts = FUNC11(flow->sf_acts);
	error = FUNC7(dp, skb, sf_acts, key);
	if (FUNC15(error))
		FUNC4("ovs: action execution error on datapath %s: %d\n",
							FUNC5(dp), error);

	stats_counter = &stats->n_hit;

out:
	/* Update datapath statistics. */
	FUNC13(&stats->syncp);
	(*stats_counter)++;
	stats->n_mask_hit += n_mask_hit;
	FUNC14(&stats->syncp);
}