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
struct tcf_ctinfo_params {int mode; int /*<<< orphan*/  cpmarkmask; int /*<<< orphan*/  dscpstatemask; int /*<<< orphan*/  dscpmask; int /*<<< orphan*/  zone; } ;
struct tcf_ctinfo {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  stats_cpmark_set; int /*<<< orphan*/  stats_dscp_error; int /*<<< orphan*/  stats_dscp_set; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  params; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_ctinfo {int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int CTINFO_MODE_CPMARK ; 
 int CTINFO_MODE_DSCP ; 
 int /*<<< orphan*/  TCA_CTINFO_ACT ; 
 int /*<<< orphan*/  TCA_CTINFO_PAD ; 
 int /*<<< orphan*/  TCA_CTINFO_PARMS_CPMARK_MASK ; 
 int /*<<< orphan*/  TCA_CTINFO_PARMS_DSCP_MASK ; 
 int /*<<< orphan*/  TCA_CTINFO_PARMS_DSCP_STATEMASK ; 
 int /*<<< orphan*/  TCA_CTINFO_STATS_CPMARK_SET ; 
 int /*<<< orphan*/  TCA_CTINFO_STATS_DSCP_ERROR ; 
 int /*<<< orphan*/  TCA_CTINFO_STATS_DSCP_SET ; 
 int /*<<< orphan*/  TCA_CTINFO_TM ; 
 int /*<<< orphan*/  TCA_CTINFO_ZONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_ctinfo*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned char*) ; 
 struct tcf_ctinfo_params* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_ctinfo* FUNC14 (struct tc_action*) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct tc_action *a,
			   int bind, int ref)
{
	struct tcf_ctinfo *ci = FUNC14(a);
	struct tc_ctinfo opt = {
		.index   = ci->tcf_index,
		.refcnt  = FUNC9(&ci->tcf_refcnt) - ref,
		.bindcnt = FUNC0(&ci->tcf_bindcnt) - bind,
	};
	unsigned char *b = FUNC10(skb);
	struct tcf_ctinfo_params *cp;
	struct tcf_t t;

	FUNC11(&ci->tcf_lock);
	cp = FUNC8(ci->params,
				       FUNC1(&ci->tcf_lock));

	FUNC13(&t, &ci->tcf_tm);
	if (FUNC3(skb, TCA_CTINFO_TM, sizeof(t), &t, TCA_CTINFO_PAD))
		goto nla_put_failure;

	opt.action = ci->tcf_action;
	if (FUNC2(skb, TCA_CTINFO_ACT, sizeof(opt), &opt))
		goto nla_put_failure;

	if (FUNC4(skb, TCA_CTINFO_ZONE, cp->zone))
		goto nla_put_failure;

	if (cp->mode & CTINFO_MODE_DSCP) {
		if (FUNC5(skb, TCA_CTINFO_PARMS_DSCP_MASK,
				cp->dscpmask))
			goto nla_put_failure;
		if (FUNC5(skb, TCA_CTINFO_PARMS_DSCP_STATEMASK,
				cp->dscpstatemask))
			goto nla_put_failure;
	}

	if (cp->mode & CTINFO_MODE_CPMARK) {
		if (FUNC5(skb, TCA_CTINFO_PARMS_CPMARK_MASK,
				cp->cpmarkmask))
			goto nla_put_failure;
	}

	if (FUNC6(skb, TCA_CTINFO_STATS_DSCP_SET,
			      ci->stats_dscp_set, TCA_CTINFO_PAD))
		goto nla_put_failure;

	if (FUNC6(skb, TCA_CTINFO_STATS_DSCP_ERROR,
			      ci->stats_dscp_error, TCA_CTINFO_PAD))
		goto nla_put_failure;

	if (FUNC6(skb, TCA_CTINFO_STATS_CPMARK_SET,
			      ci->stats_cpmark_set, TCA_CTINFO_PAD))
		goto nla_put_failure;

	FUNC12(&ci->tcf_lock);
	return skb->len;

nla_put_failure:
	FUNC12(&ci->tcf_lock);
	FUNC7(skb, b);
	return -1;
}