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
struct tcf_gact {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_tm; scalar_t__ tcfg_ptype; int /*<<< orphan*/  tcfg_pval; int /*<<< orphan*/  tcfg_paction; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_gact_p {scalar_t__ ptype; int /*<<< orphan*/  pval; int /*<<< orphan*/  paction; int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_gact {scalar_t__ ptype; int /*<<< orphan*/  pval; int /*<<< orphan*/  paction; int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  p_opt ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_GACT_PAD ; 
 int /*<<< orphan*/  TCA_GACT_PARMS ; 
 int /*<<< orphan*/  TCA_GACT_PROB ; 
 int /*<<< orphan*/  TCA_GACT_TM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_gact_p*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_gact* FUNC9 (struct tc_action*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct tc_action *a,
			 int bind, int ref)
{
	unsigned char *b = FUNC5(skb);
	struct tcf_gact *gact = FUNC9(a);
	struct tc_gact opt = {
		.index   = gact->tcf_index,
		.refcnt  = FUNC4(&gact->tcf_refcnt) - ref,
		.bindcnt = FUNC0(&gact->tcf_bindcnt) - bind,
	};
	struct tcf_t t;

	FUNC6(&gact->tcf_lock);
	opt.action = gact->tcf_action;
	if (FUNC1(skb, TCA_GACT_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;
#ifdef CONFIG_GACT_PROB
	if (gact->tcfg_ptype) {
		struct tc_gact_p p_opt = {
			.paction = gact->tcfg_paction,
			.pval    = gact->tcfg_pval,
			.ptype   = gact->tcfg_ptype,
		};

		if (nla_put(skb, TCA_GACT_PROB, sizeof(p_opt), &p_opt))
			goto nla_put_failure;
	}
#endif
	FUNC8(&t, &gact->tcf_tm);
	if (FUNC2(skb, TCA_GACT_TM, sizeof(t), &t, TCA_GACT_PAD))
		goto nla_put_failure;
	FUNC7(&gact->tcf_lock);

	return skb->len;

nla_put_failure:
	FUNC7(&gact->tcf_lock);
	FUNC3(skb, b);
	return -1;
}