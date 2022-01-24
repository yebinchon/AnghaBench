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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct tcf_skbmod_params {int flags; int /*<<< orphan*/  eth_type; int /*<<< orphan*/  eth_src; int /*<<< orphan*/  eth_dst; } ;
struct tcf_skbmod {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  skbmod_p; } ;
struct tcf_proto {int dummy; } ;
struct tcf_chain {int dummy; } ;
struct tc_skbmod {int index; int flags; int /*<<< orphan*/  action; } ;
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
 int SKBMOD_F_DMAC ; 
 int SKBMOD_F_ETYPE ; 
 int SKBMOD_F_SMAC ; 
 int SKBMOD_F_SWAPMAC ; 
 size_t TCA_SKBMOD_DMAC ; 
 size_t TCA_SKBMOD_ETYPE ; 
 int /*<<< orphan*/  TCA_SKBMOD_MAX ; 
 size_t TCA_SKBMOD_PARMS ; 
 size_t TCA_SKBMOD_SMAC ; 
 int /*<<< orphan*/  act_skbmod_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_skbmod_params*,int /*<<< orphan*/ ) ; 
 struct tcf_skbmod_params* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct tc_action_net* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 int FUNC7 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct tcf_skbmod_params*) ; 
 struct tcf_skbmod_params* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  skbmod_net_id ; 
 int /*<<< orphan*/  skbmod_policy ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ; 
 struct tcf_chain* FUNC13 (struct tc_action*,int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC14 (struct tcf_chain*) ; 
 int FUNC15 (struct tc_action_net*,int*,struct tc_action**,int) ; 
 int /*<<< orphan*/  FUNC16 (struct tc_action_net*,int) ; 
 int FUNC17 (struct tc_action_net*,int,struct nlattr*,struct tc_action**,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct tc_action_net*,struct tc_action*) ; 
 int /*<<< orphan*/  FUNC19 (struct tc_action*,int) ; 
 struct tcf_skbmod* FUNC20 (struct tc_action*) ; 
 scalar_t__ FUNC21 (int) ; 

__attribute__((used)) static int FUNC22(struct net *net, struct nlattr *nla,
			   struct nlattr *est, struct tc_action **a,
			   int ovr, int bind, bool rtnl_held,
			   struct tcf_proto *tp,
			   struct netlink_ext_ack *extack)
{
	struct tc_action_net *tn = FUNC4(net, skbmod_net_id);
	struct nlattr *tb[TCA_SKBMOD_MAX + 1];
	struct tcf_skbmod_params *p, *p_old;
	struct tcf_chain *goto_ch = NULL;
	struct tc_skbmod *parm;
	u32 lflags = 0, index;
	struct tcf_skbmod *d;
	bool exists = false;
	u8 *daddr = NULL;
	u8 *saddr = NULL;
	u16 eth_type = 0;
	int ret = 0, err;

	if (!nla)
		return -EINVAL;

	err = FUNC7(tb, TCA_SKBMOD_MAX, nla,
					  skbmod_policy, NULL);
	if (err < 0)
		return err;

	if (!tb[TCA_SKBMOD_PARMS])
		return -EINVAL;

	if (tb[TCA_SKBMOD_DMAC]) {
		daddr = FUNC5(tb[TCA_SKBMOD_DMAC]);
		lflags |= SKBMOD_F_DMAC;
	}

	if (tb[TCA_SKBMOD_SMAC]) {
		saddr = FUNC5(tb[TCA_SKBMOD_SMAC]);
		lflags |= SKBMOD_F_SMAC;
	}

	if (tb[TCA_SKBMOD_ETYPE]) {
		eth_type = FUNC6(tb[TCA_SKBMOD_ETYPE]);
		lflags |= SKBMOD_F_ETYPE;
	}

	parm = FUNC5(tb[TCA_SKBMOD_PARMS]);
	index = parm->index;
	if (parm->flags & SKBMOD_F_SWAPMAC)
		lflags = SKBMOD_F_SWAPMAC;

	err = FUNC15(tn, &index, a, bind);
	if (err < 0)
		return err;
	exists = err;
	if (exists && bind)
		return 0;

	if (!lflags) {
		if (exists)
			FUNC19(*a, bind);
		else
			FUNC16(tn, index);
		return -EINVAL;
	}

	if (!exists) {
		ret = FUNC17(tn, index, est, a,
				     &act_skbmod_ops, bind, true);
		if (ret) {
			FUNC16(tn, index);
			return ret;
		}

		ret = ACT_P_CREATED;
	} else if (!ovr) {
		FUNC19(*a, bind);
		return -EEXIST;
	}
	err = FUNC12(parm->action, tp, &goto_ch, extack);
	if (err < 0)
		goto release_idr;

	d = FUNC20(*a);

	p = FUNC3(sizeof(struct tcf_skbmod_params), GFP_KERNEL);
	if (FUNC21(!p)) {
		err = -ENOMEM;
		goto put_chain;
	}

	p->flags = lflags;

	if (ovr)
		FUNC10(&d->tcf_lock);
	/* Protected by tcf_lock if overwriting existing action. */
	goto_ch = FUNC13(*a, parm->action, goto_ch);
	p_old = FUNC9(d->skbmod_p, 1);

	if (lflags & SKBMOD_F_DMAC)
		FUNC0(p->eth_dst, daddr);
	if (lflags & SKBMOD_F_SMAC)
		FUNC0(p->eth_src, saddr);
	if (lflags & SKBMOD_F_ETYPE)
		p->eth_type = FUNC1(eth_type);

	FUNC8(d->skbmod_p, p);
	if (ovr)
		FUNC11(&d->tcf_lock);

	if (p_old)
		FUNC2(p_old, rcu);
	if (goto_ch)
		FUNC14(goto_ch);

	if (ret == ACT_P_CREATED)
		FUNC18(tn, *a);
	return ret;
put_chain:
	if (goto_ch)
		FUNC14(goto_ch);
release_idr:
	FUNC19(*a, bind);
	return err;
}