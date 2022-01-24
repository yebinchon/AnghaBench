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
struct tcf_nat {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  new_addr; int /*<<< orphan*/  old_addr; } ;
struct tcf_chain {int dummy; } ;
struct tc_nat {int /*<<< orphan*/  action; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  new_addr; int /*<<< orphan*/  old_addr; int /*<<< orphan*/  index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  TCA_NAT_MAX ; 
 size_t TCA_NAT_PARMS ; 
 int /*<<< orphan*/  act_nat_ops ; 
 int /*<<< orphan*/  nat_net_id ; 
 int /*<<< orphan*/  nat_policy ; 
 struct tc_action_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct tc_nat* FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ; 
 struct tcf_chain* FUNC6 (struct tc_action*,int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC7 (struct tcf_chain*) ; 
 int FUNC8 (struct tc_action_net*,int /*<<< orphan*/ *,struct tc_action**,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tc_action_net*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct tc_action_net*,int /*<<< orphan*/ ,struct nlattr*,struct tc_action**,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tc_action_net*,struct tc_action*) ; 
 int /*<<< orphan*/  FUNC12 (struct tc_action*,int) ; 
 struct tcf_nat* FUNC13 (struct tc_action*) ; 

__attribute__((used)) static int FUNC14(struct net *net, struct nlattr *nla, struct nlattr *est,
			struct tc_action **a, int ovr, int bind,
			bool rtnl_held,	struct tcf_proto *tp,
			struct netlink_ext_ack *extack)
{
	struct tc_action_net *tn = FUNC0(net, nat_net_id);
	struct nlattr *tb[TCA_NAT_MAX + 1];
	struct tcf_chain *goto_ch = NULL;
	struct tc_nat *parm;
	int ret = 0, err;
	struct tcf_nat *p;
	u32 index;

	if (nla == NULL)
		return -EINVAL;

	err = FUNC2(tb, TCA_NAT_MAX, nla, nat_policy,
					  NULL);
	if (err < 0)
		return err;

	if (tb[TCA_NAT_PARMS] == NULL)
		return -EINVAL;
	parm = FUNC1(tb[TCA_NAT_PARMS]);
	index = parm->index;
	err = FUNC8(tn, &index, a, bind);
	if (!err) {
		ret = FUNC10(tn, index, est, a,
				     &act_nat_ops, bind, false);
		if (ret) {
			FUNC9(tn, index);
			return ret;
		}
		ret = ACT_P_CREATED;
	} else if (err > 0) {
		if (bind)
			return 0;
		if (!ovr) {
			FUNC12(*a, bind);
			return -EEXIST;
		}
	} else {
		return err;
	}
	err = FUNC5(parm->action, tp, &goto_ch, extack);
	if (err < 0)
		goto release_idr;
	p = FUNC13(*a);

	FUNC3(&p->tcf_lock);
	p->old_addr = parm->old_addr;
	p->new_addr = parm->new_addr;
	p->mask = parm->mask;
	p->flags = parm->flags;

	goto_ch = FUNC6(*a, parm->action, goto_ch);
	FUNC4(&p->tcf_lock);
	if (goto_ch)
		FUNC7(goto_ch);

	if (ret == ACT_P_CREATED)
		FUNC11(tn, *a);

	return ret;
release_idr:
	FUNC12(*a, bind);
	return err;
}