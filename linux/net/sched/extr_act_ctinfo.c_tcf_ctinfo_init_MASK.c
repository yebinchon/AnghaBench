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
typedef  int u8 ;
typedef  int u32 ;
struct tcf_proto {int dummy; } ;
struct tcf_ctinfo_params {int dscpmask; int dscpmaskshift; int dscpstatemask; int /*<<< orphan*/  mode; void* cpmarkmask; int /*<<< orphan*/  zone; struct net* net; } ;
struct tcf_ctinfo {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  params; } ;
struct tcf_chain {int dummy; } ;
struct tc_ctinfo {int index; int /*<<< orphan*/  action; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int /*<<< orphan*/  CTINFO_MODE_CPMARK ; 
 int /*<<< orphan*/  CTINFO_MODE_DSCP ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,struct nlattr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 size_t TCA_CTINFO_ACT ; 
 int /*<<< orphan*/  TCA_CTINFO_MAX ; 
 size_t TCA_CTINFO_PARMS_CPMARK_MASK ; 
 size_t TCA_CTINFO_PARMS_DSCP_MASK ; 
 size_t TCA_CTINFO_PARMS_DSCP_STATEMASK ; 
 size_t TCA_CTINFO_ZONE ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  act_ctinfo_ops ; 
 int /*<<< orphan*/  ctinfo_net_id ; 
 int /*<<< orphan*/  ctinfo_policy ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_ctinfo_params*,int /*<<< orphan*/ ) ; 
 struct tcf_ctinfo_params* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct tc_action_net* FUNC6 (struct net*,int /*<<< orphan*/ ) ; 
 struct tc_ctinfo* FUNC7 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr*) ; 
 void* FUNC9 (struct nlattr*) ; 
 int FUNC10 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct tcf_ctinfo_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ; 
 struct tcf_chain* FUNC15 (struct tc_action*,int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC16 (struct tcf_chain*) ; 
 int FUNC17 (struct tc_action_net*,int*,struct tc_action**,int) ; 
 int /*<<< orphan*/  FUNC18 (struct tc_action_net*,int) ; 
 int FUNC19 (struct tc_action_net*,int,struct nlattr*,struct tc_action**,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct tc_action_net*,struct tc_action*) ; 
 int /*<<< orphan*/  FUNC21 (struct tc_action*,int) ; 
 struct tcf_ctinfo* FUNC22 (struct tc_action*) ; 
 scalar_t__ FUNC23 (int) ; 

__attribute__((used)) static int FUNC24(struct net *net, struct nlattr *nla,
			   struct nlattr *est, struct tc_action **a,
			   int ovr, int bind, bool rtnl_held,
			   struct tcf_proto *tp,
			   struct netlink_ext_ack *extack)
{
	struct tc_action_net *tn = FUNC6(net, ctinfo_net_id);
	u32 dscpmask = 0, dscpstatemask, index;
	struct nlattr *tb[TCA_CTINFO_MAX + 1];
	struct tcf_ctinfo_params *cp_new;
	struct tcf_chain *goto_ch = NULL;
	struct tc_ctinfo *actparm;
	struct tcf_ctinfo *ci;
	u8 dscpmaskshift;
	int ret = 0, err;

	if (!nla) {
		FUNC1(extack, "ctinfo requires attributes to be passed");
		return -EINVAL;
	}

	err = FUNC10(tb, TCA_CTINFO_MAX, nla, ctinfo_policy, extack);
	if (err < 0)
		return err;

	if (!tb[TCA_CTINFO_ACT]) {
		FUNC1(extack,
				   "Missing required TCA_CTINFO_ACT attribute");
		return -EINVAL;
	}
	actparm = FUNC7(tb[TCA_CTINFO_ACT]);

	/* do some basic validation here before dynamically allocating things */
	/* that we would otherwise have to clean up.			      */
	if (tb[TCA_CTINFO_PARMS_DSCP_MASK]) {
		dscpmask = FUNC9(tb[TCA_CTINFO_PARMS_DSCP_MASK]);
		/* need contiguous 6 bit mask */
		dscpmaskshift = dscpmask ? FUNC2(dscpmask) : 0;
		if ((~0 & (dscpmask >> dscpmaskshift)) != 0x3f) {
			FUNC0(extack,
					    tb[TCA_CTINFO_PARMS_DSCP_MASK],
					    "dscp mask must be 6 contiguous bits");
			return -EINVAL;
		}
		dscpstatemask = tb[TCA_CTINFO_PARMS_DSCP_STATEMASK] ?
			FUNC9(tb[TCA_CTINFO_PARMS_DSCP_STATEMASK]) : 0;
		/* mask & statemask must not overlap */
		if (dscpmask & dscpstatemask) {
			FUNC0(extack,
					    tb[TCA_CTINFO_PARMS_DSCP_STATEMASK],
					    "dscp statemask must not overlap dscp mask");
			return -EINVAL;
		}
	}

	/* done the validation:now to the actual action allocation */
	index = actparm->index;
	err = FUNC17(tn, &index, a, bind);
	if (!err) {
		ret = FUNC19(tn, index, est, a,
				     &act_ctinfo_ops, bind, false);
		if (ret) {
			FUNC18(tn, index);
			return ret;
		}
		ret = ACT_P_CREATED;
	} else if (err > 0) {
		if (bind) /* don't override defaults */
			return 0;
		if (!ovr) {
			FUNC21(*a, bind);
			return -EEXIST;
		}
	} else {
		return err;
	}

	err = FUNC14(actparm->action, tp, &goto_ch, extack);
	if (err < 0)
		goto release_idr;

	ci = FUNC22(*a);

	cp_new = FUNC4(sizeof(*cp_new), GFP_KERNEL);
	if (FUNC23(!cp_new)) {
		err = -ENOMEM;
		goto put_chain;
	}

	cp_new->net = net;
	cp_new->zone = tb[TCA_CTINFO_ZONE] ?
			FUNC8(tb[TCA_CTINFO_ZONE]) : 0;
	if (dscpmask) {
		cp_new->dscpmask = dscpmask;
		cp_new->dscpmaskshift = dscpmaskshift;
		cp_new->dscpstatemask = dscpstatemask;
		cp_new->mode |= CTINFO_MODE_DSCP;
	}

	if (tb[TCA_CTINFO_PARMS_CPMARK_MASK]) {
		cp_new->cpmarkmask =
				FUNC9(tb[TCA_CTINFO_PARMS_CPMARK_MASK]);
		cp_new->mode |= CTINFO_MODE_CPMARK;
	}

	FUNC12(&ci->tcf_lock);
	goto_ch = FUNC15(*a, actparm->action, goto_ch);
	FUNC11(ci->params, cp_new,
			   FUNC5(&ci->tcf_lock));
	FUNC13(&ci->tcf_lock);

	if (goto_ch)
		FUNC16(goto_ch);
	if (cp_new)
		FUNC3(cp_new, rcu);

	if (ret == ACT_P_CREATED)
		FUNC20(tn, *a);

	return ret;

put_chain:
	if (goto_ch)
		FUNC16(goto_ch);
release_idr:
	FUNC21(*a, bind);
	return err;
}