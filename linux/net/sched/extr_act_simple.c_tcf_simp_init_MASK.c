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
struct tcf_defact {int dummy; } ;
struct tcf_chain {int dummy; } ;
struct tc_defact {int /*<<< orphan*/  action; int /*<<< orphan*/  index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int EEXIST ; 
 int EINVAL ; 
 size_t TCA_DEF_DATA ; 
 int /*<<< orphan*/  TCA_DEF_MAX ; 
 size_t TCA_DEF_PARMS ; 
 int /*<<< orphan*/  act_simp_ops ; 
 int FUNC0 (struct tcf_defact*,struct nlattr*) ; 
 struct tc_action_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct tc_defact* FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tc_action*,struct nlattr*,struct tc_defact*,struct tcf_proto*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  simp_net_id ; 
 int /*<<< orphan*/  simple_policy ; 
 int FUNC5 (int /*<<< orphan*/ ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC6 (struct tc_action*,int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC7 (struct tcf_chain*) ; 
 int FUNC8 (struct tc_action_net*,int /*<<< orphan*/ *,struct tc_action**,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tc_action_net*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct tc_action_net*,int /*<<< orphan*/ ,struct nlattr*,struct tc_action**,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tc_action_net*,struct tc_action*) ; 
 int /*<<< orphan*/  FUNC12 (struct tc_action*,int) ; 
 struct tcf_defact* FUNC13 (struct tc_action*) ; 

__attribute__((used)) static int FUNC14(struct net *net, struct nlattr *nla,
			 struct nlattr *est, struct tc_action **a,
			 int ovr, int bind, bool rtnl_held,
			 struct tcf_proto *tp, struct netlink_ext_ack *extack)
{
	struct tc_action_net *tn = FUNC1(net, simp_net_id);
	struct nlattr *tb[TCA_DEF_MAX + 1];
	struct tcf_chain *goto_ch = NULL;
	struct tc_defact *parm;
	struct tcf_defact *d;
	bool exists = false;
	int ret = 0, err;
	u32 index;

	if (nla == NULL)
		return -EINVAL;

	err = FUNC3(tb, TCA_DEF_MAX, nla, simple_policy,
					  NULL);
	if (err < 0)
		return err;

	if (tb[TCA_DEF_PARMS] == NULL)
		return -EINVAL;

	parm = FUNC2(tb[TCA_DEF_PARMS]);
	index = parm->index;
	err = FUNC8(tn, &index, a, bind);
	if (err < 0)
		return err;
	exists = err;
	if (exists && bind)
		return 0;

	if (tb[TCA_DEF_DATA] == NULL) {
		if (exists)
			FUNC12(*a, bind);
		else
			FUNC9(tn, index);
		return -EINVAL;
	}

	if (!exists) {
		ret = FUNC10(tn, index, est, a,
				     &act_simp_ops, bind, false);
		if (ret) {
			FUNC9(tn, index);
			return ret;
		}

		d = FUNC13(*a);
		err = FUNC5(parm->action, tp, &goto_ch,
					       extack);
		if (err < 0)
			goto release_idr;

		err = FUNC0(d, tb[TCA_DEF_DATA]);
		if (err < 0)
			goto put_chain;

		FUNC6(*a, parm->action, goto_ch);
		ret = ACT_P_CREATED;
	} else {
		if (!ovr) {
			err = -EEXIST;
			goto release_idr;
		}

		err = FUNC4(*a, tb[TCA_DEF_DATA], parm, tp, extack);
		if (err)
			goto release_idr;
	}

	if (ret == ACT_P_CREATED)
		FUNC11(tn, *a);
	return ret;
put_chain:
	if (goto_ch)
		FUNC7(goto_ch);
release_idr:
	FUNC12(*a, bind);
	return err;
}