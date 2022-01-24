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
typedef  int /*<<< orphan*/  u32 ;
struct tcf_proto {int dummy; } ;
struct tcf_ct_params {int dummy; } ;
struct tcf_ct {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  params; } ;
struct tcf_chain {int dummy; } ;
struct tc_ct {int /*<<< orphan*/  action; int /*<<< orphan*/  index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  TCA_CT_MAX ; 
 size_t TCA_CT_PARMS ; 
 int /*<<< orphan*/  act_ct_ops ; 
 int /*<<< orphan*/  ct_net_id ; 
 int /*<<< orphan*/  ct_policy ; 
 int /*<<< orphan*/  FUNC1 (struct tcf_ct_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_ct_params*,int /*<<< orphan*/ ) ; 
 struct tcf_ct_params* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tc_action_net* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 struct tc_ct* FUNC6 (struct nlattr*) ; 
 int FUNC7 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct tcf_ct_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ; 
 struct tcf_chain* FUNC12 (struct tc_action*,int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC13 (struct tcf_chain*) ; 
 int FUNC14 (struct net*,struct tcf_ct_params*,struct tc_ct*,struct nlattr**,struct netlink_ext_ack*) ; 
 int FUNC15 (struct tc_action_net*,int /*<<< orphan*/ *,struct tc_action**,int) ; 
 int /*<<< orphan*/  FUNC16 (struct tc_action_net*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct tc_action_net*,int /*<<< orphan*/ ,struct nlattr*,struct tc_action**,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct tc_action_net*,struct tc_action*) ; 
 int /*<<< orphan*/  FUNC19 (struct tc_action*,int) ; 
 struct tcf_ct* FUNC20 (struct tc_action*) ; 
 scalar_t__ FUNC21 (int) ; 

__attribute__((used)) static int FUNC22(struct net *net, struct nlattr *nla,
		       struct nlattr *est, struct tc_action **a,
		       int replace, int bind, bool rtnl_held,
		       struct tcf_proto *tp,
		       struct netlink_ext_ack *extack)
{
	struct tc_action_net *tn = FUNC5(net, ct_net_id);
	struct tcf_ct_params *params = NULL;
	struct nlattr *tb[TCA_CT_MAX + 1];
	struct tcf_chain *goto_ch = NULL;
	struct tc_ct *parm;
	struct tcf_ct *c;
	int err, res = 0;
	u32 index;

	if (!nla) {
		FUNC0(extack, "Ct requires attributes to be passed");
		return -EINVAL;
	}

	err = FUNC7(tb, TCA_CT_MAX, nla, ct_policy, extack);
	if (err < 0)
		return err;

	if (!tb[TCA_CT_PARMS]) {
		FUNC0(extack, "Missing required ct parameters");
		return -EINVAL;
	}
	parm = FUNC6(tb[TCA_CT_PARMS]);
	index = parm->index;
	err = FUNC15(tn, &index, a, bind);
	if (err < 0)
		return err;

	if (!err) {
		err = FUNC17(tn, index, est, a,
				     &act_ct_ops, bind, true);
		if (err) {
			FUNC16(tn, index);
			return err;
		}
		res = ACT_P_CREATED;
	} else {
		if (bind)
			return 0;

		if (!replace) {
			FUNC19(*a, bind);
			return -EEXIST;
		}
	}
	err = FUNC11(parm->action, tp, &goto_ch, extack);
	if (err < 0)
		goto cleanup;

	c = FUNC20(*a);

	params = FUNC3(sizeof(*params), GFP_KERNEL);
	if (FUNC21(!params)) {
		err = -ENOMEM;
		goto cleanup;
	}

	err = FUNC14(net, params, parm, tb, extack);
	if (err)
		goto cleanup;

	FUNC9(&c->tcf_lock);
	goto_ch = FUNC12(*a, parm->action, goto_ch);
	FUNC8(c->params, params, FUNC4(&c->tcf_lock));
	FUNC10(&c->tcf_lock);

	if (goto_ch)
		FUNC13(goto_ch);
	if (params)
		FUNC2(params, rcu);
	if (res == ACT_P_CREATED)
		FUNC18(tn, *a);

	return res;

cleanup:
	if (goto_ch)
		FUNC13(goto_ch);
	FUNC1(params);
	FUNC19(*a, bind);
	return err;
}