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
typedef  int u64 ;
typedef  int u32 ;
typedef  void* u16 ;
struct tcf_skbedit_params {int flags; int priority; int mark; int mask; void* ptype; void* queue_mapping; } ;
struct tcf_skbedit {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  params; } ;
struct tcf_proto {int dummy; } ;
struct tcf_chain {int dummy; } ;
struct tc_skbedit {int index; int /*<<< orphan*/  action; } ;
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
 int SKBEDIT_F_INHERITDSFIELD ; 
 int SKBEDIT_F_MARK ; 
 int SKBEDIT_F_MASK ; 
 int SKBEDIT_F_PRIORITY ; 
 int SKBEDIT_F_PTYPE ; 
 int SKBEDIT_F_QUEUE_MAPPING ; 
 size_t TCA_SKBEDIT_FLAGS ; 
 size_t TCA_SKBEDIT_MARK ; 
 size_t TCA_SKBEDIT_MASK ; 
 int /*<<< orphan*/  TCA_SKBEDIT_MAX ; 
 size_t TCA_SKBEDIT_PARMS ; 
 size_t TCA_SKBEDIT_PRIORITY ; 
 size_t TCA_SKBEDIT_PTYPE ; 
 size_t TCA_SKBEDIT_QUEUE_MAPPING ; 
 int /*<<< orphan*/  act_skbedit_ops ; 
 int /*<<< orphan*/  FUNC0 (struct tcf_skbedit_params*,int /*<<< orphan*/ ) ; 
 struct tcf_skbedit_params* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tc_action_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct tcf_skbedit_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  skbedit_net_id ; 
 int /*<<< orphan*/  skbedit_policy ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ; 
 struct tcf_chain* FUNC11 (struct tc_action*,int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC12 (struct tcf_chain*) ; 
 int FUNC13 (struct tc_action_net*,int*,struct tc_action**,int) ; 
 int /*<<< orphan*/  FUNC14 (struct tc_action_net*,int) ; 
 int FUNC15 (struct tc_action_net*,int,struct nlattr*,struct tc_action**,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct tc_action_net*,struct tc_action*) ; 
 int /*<<< orphan*/  FUNC17 (struct tc_action*,int) ; 
 struct tcf_skbedit* FUNC18 (struct tc_action*) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static int FUNC20(struct net *net, struct nlattr *nla,
			    struct nlattr *est, struct tc_action **a,
			    int ovr, int bind, bool rtnl_held,
			    struct tcf_proto *tp,
			    struct netlink_ext_ack *extack)
{
	struct tc_action_net *tn = FUNC3(net, skbedit_net_id);
	struct tcf_skbedit_params *params_new;
	struct nlattr *tb[TCA_SKBEDIT_MAX + 1];
	struct tcf_chain *goto_ch = NULL;
	struct tc_skbedit *parm;
	struct tcf_skbedit *d;
	u32 flags = 0, *priority = NULL, *mark = NULL, *mask = NULL;
	u16 *queue_mapping = NULL, *ptype = NULL;
	bool exists = false;
	int ret = 0, err;
	u32 index;

	if (nla == NULL)
		return -EINVAL;

	err = FUNC5(tb, TCA_SKBEDIT_MAX, nla,
					  skbedit_policy, NULL);
	if (err < 0)
		return err;

	if (tb[TCA_SKBEDIT_PARMS] == NULL)
		return -EINVAL;

	if (tb[TCA_SKBEDIT_PRIORITY] != NULL) {
		flags |= SKBEDIT_F_PRIORITY;
		priority = FUNC4(tb[TCA_SKBEDIT_PRIORITY]);
	}

	if (tb[TCA_SKBEDIT_QUEUE_MAPPING] != NULL) {
		flags |= SKBEDIT_F_QUEUE_MAPPING;
		queue_mapping = FUNC4(tb[TCA_SKBEDIT_QUEUE_MAPPING]);
	}

	if (tb[TCA_SKBEDIT_PTYPE] != NULL) {
		ptype = FUNC4(tb[TCA_SKBEDIT_PTYPE]);
		if (!FUNC7(*ptype))
			return -EINVAL;
		flags |= SKBEDIT_F_PTYPE;
	}

	if (tb[TCA_SKBEDIT_MARK] != NULL) {
		flags |= SKBEDIT_F_MARK;
		mark = FUNC4(tb[TCA_SKBEDIT_MARK]);
	}

	if (tb[TCA_SKBEDIT_MASK] != NULL) {
		flags |= SKBEDIT_F_MASK;
		mask = FUNC4(tb[TCA_SKBEDIT_MASK]);
	}

	if (tb[TCA_SKBEDIT_FLAGS] != NULL) {
		u64 *pure_flags = FUNC4(tb[TCA_SKBEDIT_FLAGS]);

		if (*pure_flags & SKBEDIT_F_INHERITDSFIELD)
			flags |= SKBEDIT_F_INHERITDSFIELD;
	}

	parm = FUNC4(tb[TCA_SKBEDIT_PARMS]);
	index = parm->index;
	err = FUNC13(tn, &index, a, bind);
	if (err < 0)
		return err;
	exists = err;
	if (exists && bind)
		return 0;

	if (!flags) {
		if (exists)
			FUNC17(*a, bind);
		else
			FUNC14(tn, index);
		return -EINVAL;
	}

	if (!exists) {
		ret = FUNC15(tn, index, est, a,
				     &act_skbedit_ops, bind, true);
		if (ret) {
			FUNC14(tn, index);
			return ret;
		}

		d = FUNC18(*a);
		ret = ACT_P_CREATED;
	} else {
		d = FUNC18(*a);
		if (!ovr) {
			FUNC17(*a, bind);
			return -EEXIST;
		}
	}
	err = FUNC10(parm->action, tp, &goto_ch, extack);
	if (err < 0)
		goto release_idr;

	params_new = FUNC1(sizeof(*params_new), GFP_KERNEL);
	if (FUNC19(!params_new)) {
		err = -ENOMEM;
		goto put_chain;
	}

	params_new->flags = flags;
	if (flags & SKBEDIT_F_PRIORITY)
		params_new->priority = *priority;
	if (flags & SKBEDIT_F_QUEUE_MAPPING)
		params_new->queue_mapping = *queue_mapping;
	if (flags & SKBEDIT_F_MARK)
		params_new->mark = *mark;
	if (flags & SKBEDIT_F_PTYPE)
		params_new->ptype = *ptype;
	/* default behaviour is to use all the bits */
	params_new->mask = 0xffffffff;
	if (flags & SKBEDIT_F_MASK)
		params_new->mask = *mask;

	FUNC8(&d->tcf_lock);
	goto_ch = FUNC11(*a, parm->action, goto_ch);
	FUNC6(d->params, params_new,
			   FUNC2(&d->tcf_lock));
	FUNC9(&d->tcf_lock);
	if (params_new)
		FUNC0(params_new, rcu);
	if (goto_ch)
		FUNC12(goto_ch);

	if (ret == ACT_P_CREATED)
		FUNC16(tn, *a);
	return ret;
put_chain:
	if (goto_ch)
		FUNC12(goto_ch);
release_idr:
	FUNC17(*a, bind);
	return err;
}