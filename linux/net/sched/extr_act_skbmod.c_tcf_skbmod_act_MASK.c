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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct tcf_skbmod_params {int flags; int /*<<< orphan*/  eth_type; int /*<<< orphan*/ * eth_src; int /*<<< orphan*/ * eth_dst; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpu_qstats; int /*<<< orphan*/  cpu_bstats; } ;
struct tcf_skbmod {TYPE_1__ common; int /*<<< orphan*/  skbmod_p; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_tm; } ;
struct tcf_result {int dummy; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * h_source; int /*<<< orphan*/ * h_dest; int /*<<< orphan*/  h_proto; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MAX_EDIT_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SKBMOD_F_DMAC ; 
 int SKBMOD_F_ETYPE ; 
 int SKBMOD_F_SMAC ; 
 int SKBMOD_F_SWAPMAC ; 
 int TC_ACT_SHOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct tcf_skbmod_params* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct tcf_skbmod* FUNC9 (struct tc_action const*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, const struct tc_action *a,
			  struct tcf_result *res)
{
	struct tcf_skbmod *d = FUNC9(a);
	int action;
	struct tcf_skbmod_params *p;
	u64 flags;
	int err;

	FUNC7(&d->tcf_tm);
	FUNC1(FUNC8(d->common.cpu_bstats), skb);

	/* XXX: if you are going to edit more fields beyond ethernet header
	 * (example when you add IP header replacement or vlan swap)
	 * then MAX_EDIT_LEN needs to change appropriately
	*/
	err = FUNC6(skb, MAX_EDIT_LEN);
	if (FUNC10(err)) /* best policy is to drop on the floor */
		goto drop;

	action = FUNC0(d->tcf_action);
	if (FUNC10(action == TC_ACT_SHOT))
		goto drop;

	p = FUNC5(d->skbmod_p);
	flags = p->flags;
	if (flags & SKBMOD_F_DMAC)
		FUNC3(FUNC2(skb)->h_dest, p->eth_dst);
	if (flags & SKBMOD_F_SMAC)
		FUNC3(FUNC2(skb)->h_source, p->eth_src);
	if (flags & SKBMOD_F_ETYPE)
		FUNC2(skb)->h_proto = p->eth_type;

	if (flags & SKBMOD_F_SWAPMAC) {
		u16 tmpaddr[ETH_ALEN / 2]; /* ether_addr_copy() requirement */
		/*XXX: I am sure we can come up with more efficient swapping*/
		FUNC3((u8 *)tmpaddr, FUNC2(skb)->h_dest);
		FUNC3(FUNC2(skb)->h_dest, FUNC2(skb)->h_source);
		FUNC3(FUNC2(skb)->h_source, (u8 *)tmpaddr);
	}

	return action;

drop:
	FUNC4(FUNC8(d->common.cpu_qstats));
	return TC_ACT_SHOT;
}