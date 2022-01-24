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
struct tcf_result {int dummy; } ;
struct tcf_mpls_params {int tcfm_action; int /*<<< orphan*/  tcfm_proto; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_qstats; int /*<<< orphan*/  cpu_bstats; } ;
struct tcf_mpls {TYPE_1__ common; int /*<<< orphan*/  mpls_p; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_tm; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int mac_len; int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  TCA_MPLS_ACT_DEC_TTL 131 
#define  TCA_MPLS_ACT_MODIFY 130 
#define  TCA_MPLS_ACT_POP 129 
#define  TCA_MPLS_ACT_PUSH 128 
 int TC_ACT_SHOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct tcf_mpls_params* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct tcf_mpls_params*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 struct tcf_mpls* FUNC18 (struct tc_action const*) ; 

__attribute__((used)) static int FUNC19(struct sk_buff *skb, const struct tc_action *a,
			struct tcf_result *res)
{
	struct tcf_mpls *m = FUNC18(a);
	struct tcf_mpls_params *p;
	__be32 new_lse;
	int ret, mac_len;

	FUNC15(&m->tcf_tm);
	FUNC1(FUNC17(m->common.cpu_bstats), skb);

	/* Ensure 'data' points at mac_header prior calling mpls manipulating
	 * functions.
	 */
	if (FUNC6(skb)) {
		FUNC14(skb, skb->mac_len);
		mac_len = skb->mac_len;
	} else {
		mac_len = FUNC12(skb) - FUNC7(skb);
	}

	ret = FUNC0(m->tcf_action);

	p = FUNC5(m->mpls_p);

	switch (p->tcfm_action) {
	case TCA_MPLS_ACT_POP:
		if (FUNC9(skb, p->tcfm_proto, mac_len))
			goto drop;
		break;
	case TCA_MPLS_ACT_PUSH:
		new_lse = FUNC16(NULL, p, !FUNC2(skb->protocol));
		if (FUNC10(skb, new_lse, p->tcfm_proto, mac_len))
			goto drop;
		break;
	case TCA_MPLS_ACT_MODIFY:
		new_lse = FUNC16(FUNC3(skb), p, false);
		if (FUNC11(skb, new_lse))
			goto drop;
		break;
	case TCA_MPLS_ACT_DEC_TTL:
		if (FUNC8(skb))
			goto drop;
		break;
	}

	if (FUNC6(skb))
		FUNC13(skb, skb->mac_len);

	return ret;

drop:
	FUNC4(FUNC17(m->common.cpu_qstats));
	return TC_ACT_SHOT;
}