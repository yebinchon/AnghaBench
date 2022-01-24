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
struct tcf_skbmod_params {int flags; int /*<<< orphan*/  eth_type; struct tc_skbmod* eth_src; struct tc_skbmod* eth_dst; } ;
struct tcf_skbmod {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  skbmod_p; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_skbmod {int flags; int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int ETH_ALEN ; 
 int SKBMOD_F_DMAC ; 
 int SKBMOD_F_ETYPE ; 
 int SKBMOD_F_SMAC ; 
 int /*<<< orphan*/  TCA_SKBMOD_DMAC ; 
 int /*<<< orphan*/  TCA_SKBMOD_ETYPE ; 
 int /*<<< orphan*/  TCA_SKBMOD_PAD ; 
 int /*<<< orphan*/  TCA_SKBMOD_PARMS ; 
 int /*<<< orphan*/  TCA_SKBMOD_SMAC ; 
 int /*<<< orphan*/  TCA_SKBMOD_TM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_skbmod*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct tcf_skbmod_params* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_skbmod* FUNC13 (struct tc_action*) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, struct tc_action *a,
			   int bind, int ref)
{
	struct tcf_skbmod *d = FUNC13(a);
	unsigned char *b = FUNC9(skb);
	struct tcf_skbmod_params  *p;
	struct tc_skbmod opt = {
		.index   = d->tcf_index,
		.refcnt  = FUNC8(&d->tcf_refcnt) - ref,
		.bindcnt = FUNC0(&d->tcf_bindcnt) - bind,
	};
	struct tcf_t t;

	FUNC10(&d->tcf_lock);
	opt.action = d->tcf_action;
	p = FUNC7(d->skbmod_p,
				      FUNC1(&d->tcf_lock));
	opt.flags  = p->flags;
	if (FUNC2(skb, TCA_SKBMOD_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;
	if ((p->flags & SKBMOD_F_DMAC) &&
	    FUNC2(skb, TCA_SKBMOD_DMAC, ETH_ALEN, p->eth_dst))
		goto nla_put_failure;
	if ((p->flags & SKBMOD_F_SMAC) &&
	    FUNC2(skb, TCA_SKBMOD_SMAC, ETH_ALEN, p->eth_src))
		goto nla_put_failure;
	if ((p->flags & SKBMOD_F_ETYPE) &&
	    FUNC4(skb, TCA_SKBMOD_ETYPE, FUNC6(p->eth_type)))
		goto nla_put_failure;

	FUNC12(&t, &d->tcf_tm);
	if (FUNC3(skb, TCA_SKBMOD_TM, sizeof(t), &t, TCA_SKBMOD_PAD))
		goto nla_put_failure;

	FUNC11(&d->tcf_lock);
	return skb->len;
nla_put_failure:
	FUNC11(&d->tcf_lock);
	FUNC5(skb, b);
	return -1;
}