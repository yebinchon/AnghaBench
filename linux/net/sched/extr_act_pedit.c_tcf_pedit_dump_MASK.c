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
typedef  int /*<<< orphan*/  t ;
struct tcf_t {int dummy; } ;
struct tcf_pedit {int tcfp_nkeys; int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_tm; scalar_t__ tcfp_keys_ex; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcfp_flags; int /*<<< orphan*/  tcf_index; int /*<<< orphan*/  tcfp_keys; } ;
struct tc_pedit_key {int dummy; } ;
struct tc_pedit {int nkeys; scalar_t__ bindcnt; scalar_t__ refcnt; int /*<<< orphan*/  action; int /*<<< orphan*/  flags; int /*<<< orphan*/  index; int /*<<< orphan*/  keys; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  TCA_PEDIT_PAD ; 
 int /*<<< orphan*/  TCA_PEDIT_PARMS ; 
 int /*<<< orphan*/  TCA_PEDIT_PARMS_EX ; 
 int /*<<< orphan*/  TCA_PEDIT_TM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  keys ; 
 int /*<<< orphan*/  FUNC1 (struct tc_pedit*) ; 
 struct tc_pedit* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_pedit*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct tc_pedit*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (struct sk_buff*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_pedit* FUNC14 (struct tc_action*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb, struct tc_action *a,
			  int bind, int ref)
{
	unsigned char *b = FUNC8(skb);
	struct tcf_pedit *p = FUNC14(a);
	struct tc_pedit *opt;
	struct tcf_t t;
	int s;

	s = FUNC11(opt, keys, p->tcfp_nkeys);

	/* netlink spinlocks held above us - must use ATOMIC */
	opt = FUNC2(s, GFP_ATOMIC);
	if (FUNC15(!opt))
		return -ENOBUFS;

	FUNC9(&p->tcf_lock);
	FUNC3(opt->keys, p->tcfp_keys,
	       p->tcfp_nkeys * sizeof(struct tc_pedit_key));
	opt->index = p->tcf_index;
	opt->nkeys = p->tcfp_nkeys;
	opt->flags = p->tcfp_flags;
	opt->action = p->tcf_action;
	opt->refcnt = FUNC7(&p->tcf_refcnt) - ref;
	opt->bindcnt = FUNC0(&p->tcf_bindcnt) - bind;

	if (p->tcfp_keys_ex) {
		if (FUNC12(skb,
					  p->tcfp_keys_ex,
					  p->tcfp_nkeys))
			goto nla_put_failure;

		if (FUNC4(skb, TCA_PEDIT_PARMS_EX, s, opt))
			goto nla_put_failure;
	} else {
		if (FUNC4(skb, TCA_PEDIT_PARMS, s, opt))
			goto nla_put_failure;
	}

	FUNC13(&t, &p->tcf_tm);
	if (FUNC5(skb, TCA_PEDIT_TM, sizeof(t), &t, TCA_PEDIT_PAD))
		goto nla_put_failure;
	FUNC10(&p->tcf_lock);

	FUNC1(opt);
	return skb->len;

nla_put_failure:
	FUNC10(&p->tcf_lock);
	FUNC6(skb, b);
	FUNC1(opt);
	return -1;
}