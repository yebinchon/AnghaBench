#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
struct tcf_result {int dummy; } ;
struct tcf_ct_params {int ct_action; int /*<<< orphan*/  labels_mask; int /*<<< orphan*/  labels; int /*<<< orphan*/  mark_mask; int /*<<< orphan*/  mark; int /*<<< orphan*/  range; int /*<<< orphan*/  zone; struct nf_conn* tmpl; } ;
struct tcf_ct {int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  params; } ;
struct tc_action {int /*<<< orphan*/  cpu_qstats; int /*<<< orphan*/  cpu_bstats; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct nf_hook_state {scalar_t__ pf; struct net* net; int /*<<< orphan*/  hook; } ;
struct nf_conn {int /*<<< orphan*/  ct_general; } ;
struct net {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  IP_CT_NEW ; 
 int /*<<< orphan*/  IP_CT_UNTRACKED ; 
 scalar_t__ NFPROTO_UNSPEC ; 
 int NF_ACCEPT ; 
 int /*<<< orphan*/  NF_INET_PRE_ROUTING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TCA_CT_ACT_CLEAR ; 
 int TCA_CT_ACT_COMMIT ; 
 int TCA_CT_ACT_FORCE ; 
 int TC_ACT_SHOT ; 
 int TC_ACT_STOLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sk_buff*,struct nf_hook_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_conn*) ; 
 struct nf_conn* FUNC8 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct tcf_ct_params* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int FUNC16 (struct sk_buff*,struct nf_conn*,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (struct nf_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct nf_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct net*,struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC21 (struct sk_buff*) ; 
 int FUNC22 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 struct tcf_ct* FUNC24 (struct tc_action const*) ; 

__attribute__((used)) static int FUNC25(struct sk_buff *skb, const struct tc_action *a,
		      struct tcf_result *res)
{
	struct net *net = FUNC2(skb->dev);
	bool cached, commit, clear, force;
	enum ip_conntrack_info ctinfo;
	struct tcf_ct *c = FUNC24(a);
	struct nf_conn *tmpl = NULL;
	struct nf_hook_state state;
	int nh_ofs, err, retval;
	struct tcf_ct_params *p;
	struct nf_conn *ct;
	u8 family;

	p = FUNC11(c->params);

	retval = FUNC0(c->tcf_action);
	commit = p->ct_action & TCA_CT_ACT_COMMIT;
	clear = p->ct_action & TCA_CT_ACT_CLEAR;
	force = p->ct_action & TCA_CT_ACT_FORCE;
	tmpl = p->tmpl;

	if (clear) {
		ct = FUNC8(skb, &ctinfo);
		if (ct) {
			FUNC6(&ct->ct_general);
			FUNC9(skb, NULL, IP_CT_UNTRACKED);
		}

		goto out;
	}

	family = FUNC21(skb);
	if (family == NFPROTO_UNSPEC)
		goto drop;

	/* The conntrack module expects to be working at L3.
	 * We also try to pull the IPv4/6 header to linear area
	 */
	nh_ofs = FUNC12(skb);
	FUNC14(skb, nh_ofs);
	err = FUNC19(net, skb, family, p->zone);
	if (err == -EINPROGRESS) {
		retval = TC_ACT_STOLEN;
		goto out;
	}
	if (err)
		goto drop;

	err = FUNC20(skb, family);
	if (err)
		goto drop;

	/* If we are recirculating packets to match on ct fields and
	 * committing with a separate ct action, then we don't need to
	 * actually run the packet through conntrack twice unless it's for a
	 * different zone.
	 */
	cached = FUNC22(net, skb, p->zone, force);
	if (!cached) {
		/* Associate skb with specified zone. */
		if (tmpl) {
			ct = FUNC8(skb, &ctinfo);
			if (FUNC13(skb))
				FUNC6(FUNC13(skb));
			FUNC4(&tmpl->ct_general);
			FUNC9(skb, tmpl, IP_CT_NEW);
		}

		state.hook = NF_INET_PRE_ROUTING;
		state.net = net;
		state.pf = family;
		err = FUNC5(skb, &state);
		if (err != NF_ACCEPT)
			goto out_push;
	}

	ct = FUNC8(skb, &ctinfo);
	if (!ct)
		goto out_push;
	FUNC7(ct);

	err = FUNC16(skb, ct, ctinfo, p->ct_action, &p->range, commit);
	if (err != NF_ACCEPT)
		goto drop;

	if (commit) {
		FUNC18(ct, p->mark, p->mark_mask);
		FUNC17(ct, p->labels, p->labels_mask);

		/* This will take care of sending queued events
		 * even if the connection is already confirmed.
		 */
		FUNC3(skb);
	}

out_push:
	FUNC15(skb, nh_ofs);

out:
	FUNC1(FUNC23(a->cpu_bstats), skb);
	return retval;

drop:
	FUNC10(FUNC23(a->cpu_qstats));
	return TC_ACT_SHOT;
}