#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct tcf_vlan_params {int tcfv_action; int tcfv_push_vid; int tcfv_push_prio; int /*<<< orphan*/  tcfv_push_proto; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_qstats; int /*<<< orphan*/  cpu_bstats; } ;
struct tcf_vlan {TYPE_1__ common; int /*<<< orphan*/  vlan_p; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_tm; } ;
struct tcf_result {int dummy; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  mac_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  TCA_VLAN_ACT_MODIFY 130 
#define  TCA_VLAN_ACT_POP 129 
#define  TCA_VLAN_ACT_PUSH 128 
 int TC_ACT_SHOT ; 
 int VLAN_PRIO_MASK ; 
 int VLAN_PRIO_SHIFT ; 
 int VLAN_VID_MASK ; 
 int FUNC2 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct tcf_vlan_params* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sk_buff*) ; 
 int FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 struct tcf_vlan* FUNC18 (struct tc_action const*) ; 

__attribute__((used)) static int FUNC19(struct sk_buff *skb, const struct tc_action *a,
			struct tcf_result *res)
{
	struct tcf_vlan *v = FUNC18(a);
	struct tcf_vlan_params *p;
	int action;
	int err;
	u16 tci;

	FUNC16(&v->tcf_tm);
	FUNC5(FUNC17(v->common.cpu_bstats), skb);

	/* Ensure 'data' points at mac_header prior calling vlan manipulating
	 * functions.
	 */
	if (FUNC8(skb))
		FUNC10(skb, skb->mac_len);

	action = FUNC1(v->tcf_action);

	p = FUNC7(v->vlan_p);

	switch (p->tcfv_action) {
	case TCA_VLAN_ACT_POP:
		err = FUNC11(skb);
		if (err)
			goto drop;
		break;
	case TCA_VLAN_ACT_PUSH:
		err = FUNC12(skb, p->tcfv_push_proto, p->tcfv_push_vid |
				    (p->tcfv_push_prio << VLAN_PRIO_SHIFT));
		if (err)
			goto drop;
		break;
	case TCA_VLAN_ACT_MODIFY:
		/* No-op if no vlan tag (either hw-accel or in-payload) */
		if (!FUNC15(skb))
			goto out;
		/* extract existing tag (and guarantee no hw-accel tag) */
		if (FUNC14(skb)) {
			tci = FUNC13(skb);
			FUNC3(skb);
		} else {
			/* in-payload vlan tag, pop it */
			err = FUNC2(skb, &tci);
			if (err)
				goto drop;
		}
		/* replace the vid */
		tci = (tci & ~VLAN_VID_MASK) | p->tcfv_push_vid;
		/* replace prio bits, if tcfv_push_prio specified */
		if (p->tcfv_push_prio) {
			tci &= ~VLAN_PRIO_MASK;
			tci |= p->tcfv_push_prio << VLAN_PRIO_SHIFT;
		}
		/* put updated tci as hwaccel tag */
		FUNC4(skb, p->tcfv_push_proto, tci);
		break;
	default:
		FUNC0();
	}

out:
	if (FUNC8(skb))
		FUNC9(skb, skb->mac_len);

	return action;

drop:
	FUNC6(FUNC17(v->common.cpu_qstats));
	return TC_ACT_SHOT;
}