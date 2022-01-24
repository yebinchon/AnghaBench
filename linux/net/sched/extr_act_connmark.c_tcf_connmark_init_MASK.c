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
struct tcf_connmark_info {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  zone; struct net* net; } ;
struct tcf_chain {int dummy; } ;
struct tc_connmark {int /*<<< orphan*/  zone; int /*<<< orphan*/  action; int /*<<< orphan*/  index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  TCA_CONNMARK_MAX ; 
 size_t TCA_CONNMARK_PARMS ; 
 int /*<<< orphan*/  act_connmark_ops ; 
 int /*<<< orphan*/  connmark_net_id ; 
 int /*<<< orphan*/  connmark_policy ; 
 struct tc_action_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct tc_connmark* FUNC1 (struct nlattr*) ; 
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
 struct tcf_connmark_info* FUNC13 (struct tc_action*) ; 

__attribute__((used)) static int FUNC14(struct net *net, struct nlattr *nla,
			     struct nlattr *est, struct tc_action **a,
			     int ovr, int bind, bool rtnl_held,
			     struct tcf_proto *tp,
			     struct netlink_ext_ack *extack)
{
	struct tc_action_net *tn = FUNC0(net, connmark_net_id);
	struct nlattr *tb[TCA_CONNMARK_MAX + 1];
	struct tcf_chain *goto_ch = NULL;
	struct tcf_connmark_info *ci;
	struct tc_connmark *parm;
	int ret = 0, err;
	u32 index;

	if (!nla)
		return -EINVAL;

	ret = FUNC2(tb, TCA_CONNMARK_MAX, nla,
					  connmark_policy, NULL);
	if (ret < 0)
		return ret;

	if (!tb[TCA_CONNMARK_PARMS])
		return -EINVAL;

	parm = FUNC1(tb[TCA_CONNMARK_PARMS]);
	index = parm->index;
	ret = FUNC8(tn, &index, a, bind);
	if (!ret) {
		ret = FUNC10(tn, index, est, a,
				     &act_connmark_ops, bind, false);
		if (ret) {
			FUNC9(tn, index);
			return ret;
		}

		ci = FUNC13(*a);
		err = FUNC5(parm->action, tp, &goto_ch,
					       extack);
		if (err < 0)
			goto release_idr;
		FUNC6(*a, parm->action, goto_ch);
		ci->net = net;
		ci->zone = parm->zone;

		FUNC11(tn, *a);
		ret = ACT_P_CREATED;
	} else if (ret > 0) {
		ci = FUNC13(*a);
		if (bind)
			return 0;
		if (!ovr) {
			FUNC12(*a, bind);
			return -EEXIST;
		}
		err = FUNC5(parm->action, tp, &goto_ch,
					       extack);
		if (err < 0)
			goto release_idr;
		/* replacing action and zone */
		FUNC3(&ci->tcf_lock);
		goto_ch = FUNC6(*a, parm->action, goto_ch);
		ci->zone = parm->zone;
		FUNC4(&ci->tcf_lock);
		if (goto_ch)
			FUNC7(goto_ch);
		ret = 0;
	}

	return ret;
release_idr:
	FUNC12(*a, bind);
	return err;
}