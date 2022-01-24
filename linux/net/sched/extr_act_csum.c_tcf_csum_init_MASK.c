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
struct tcf_csum_params {int /*<<< orphan*/  update_flags; } ;
struct tcf_csum {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  params; } ;
struct tcf_chain {int dummy; } ;
struct tc_csum {int /*<<< orphan*/  action; int /*<<< orphan*/  update_flags; int /*<<< orphan*/  index; } ;
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
 int /*<<< orphan*/  TCA_CSUM_MAX ; 
 size_t TCA_CSUM_PARMS ; 
 int /*<<< orphan*/  act_csum_ops ; 
 int /*<<< orphan*/  csum_net_id ; 
 int /*<<< orphan*/  csum_policy ; 
 int /*<<< orphan*/  FUNC0 (struct tcf_csum_params*,int /*<<< orphan*/ ) ; 
 struct tcf_csum_params* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tc_action_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 struct tc_csum* FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct tcf_csum_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ; 
 struct tcf_chain* FUNC10 (struct tc_action*,int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC11 (struct tcf_chain*) ; 
 int FUNC12 (struct tc_action_net*,int /*<<< orphan*/ *,struct tc_action**,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tc_action_net*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct tc_action_net*,int /*<<< orphan*/ ,struct nlattr*,struct tc_action**,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct tc_action_net*,struct tc_action*) ; 
 int /*<<< orphan*/  FUNC16 (struct tc_action*,int) ; 
 struct tcf_csum* FUNC17 (struct tc_action*) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(struct net *net, struct nlattr *nla,
			 struct nlattr *est, struct tc_action **a, int ovr,
			 int bind, bool rtnl_held, struct tcf_proto *tp,
			 struct netlink_ext_ack *extack)
{
	struct tc_action_net *tn = FUNC3(net, csum_net_id);
	struct tcf_csum_params *params_new;
	struct nlattr *tb[TCA_CSUM_MAX + 1];
	struct tcf_chain *goto_ch = NULL;
	struct tc_csum *parm;
	struct tcf_csum *p;
	int ret = 0, err;
	u32 index;

	if (nla == NULL)
		return -EINVAL;

	err = FUNC5(tb, TCA_CSUM_MAX, nla, csum_policy,
					  NULL);
	if (err < 0)
		return err;

	if (tb[TCA_CSUM_PARMS] == NULL)
		return -EINVAL;
	parm = FUNC4(tb[TCA_CSUM_PARMS]);
	index = parm->index;
	err = FUNC12(tn, &index, a, bind);
	if (!err) {
		ret = FUNC14(tn, index, est, a,
				     &act_csum_ops, bind, true);
		if (ret) {
			FUNC13(tn, index);
			return ret;
		}
		ret = ACT_P_CREATED;
	} else if (err > 0) {
		if (bind)/* dont override defaults */
			return 0;
		if (!ovr) {
			FUNC16(*a, bind);
			return -EEXIST;
		}
	} else {
		return err;
	}

	err = FUNC9(parm->action, tp, &goto_ch, extack);
	if (err < 0)
		goto release_idr;

	p = FUNC17(*a);

	params_new = FUNC1(sizeof(*params_new), GFP_KERNEL);
	if (FUNC18(!params_new)) {
		err = -ENOMEM;
		goto put_chain;
	}
	params_new->update_flags = parm->update_flags;

	FUNC7(&p->tcf_lock);
	goto_ch = FUNC10(*a, parm->action, goto_ch);
	FUNC6(p->params, params_new,
			   FUNC2(&p->tcf_lock));
	FUNC8(&p->tcf_lock);

	if (goto_ch)
		FUNC11(goto_ch);
	if (params_new)
		FUNC0(params_new, rcu);

	if (ret == ACT_P_CREATED)
		FUNC15(tn, *a);

	return ret;
put_chain:
	if (goto_ch)
		FUNC11(goto_ch);
release_idr:
	FUNC16(*a, bind);
	return err;
}