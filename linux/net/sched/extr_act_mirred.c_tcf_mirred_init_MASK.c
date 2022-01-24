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
struct tcf_mirred {int tcfm_mac_header_xmit; int tcfm_eaction; int /*<<< orphan*/  tcfm_list; int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcfm_dev; } ;
struct tcf_chain {int dummy; } ;
struct tc_mirred {int eaction; int /*<<< orphan*/  action; scalar_t__ ifindex; int /*<<< orphan*/  index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
#define  TCA_EGRESS_MIRROR 131 
#define  TCA_EGRESS_REDIR 130 
#define  TCA_INGRESS_MIRROR 129 
#define  TCA_INGRESS_REDIR 128 
 int /*<<< orphan*/  TCA_MIRRED_MAX ; 
 size_t TCA_MIRRED_PARMS ; 
 int /*<<< orphan*/  act_mirred_ops ; 
 struct net_device* FUNC2 (struct net*,scalar_t__) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mirred_list ; 
 int /*<<< orphan*/  mirred_list_lock ; 
 int /*<<< orphan*/  mirred_net_id ; 
 int /*<<< orphan*/  mirred_policy ; 
 struct tc_action_net* FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 struct tc_mirred* FUNC8 (struct nlattr*) ; 
 int FUNC9 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ; 
 struct tcf_chain* FUNC16 (struct tc_action*,int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC17 (struct tcf_chain*) ; 
 int FUNC18 (struct tc_action_net*,int /*<<< orphan*/ *,struct tc_action**,int) ; 
 int /*<<< orphan*/  FUNC19 (struct tc_action_net*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct tc_action_net*,int /*<<< orphan*/ ,struct nlattr*,struct tc_action**,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct tc_action_net*,struct tc_action*) ; 
 int /*<<< orphan*/  FUNC22 (struct tc_action*,int) ; 
 struct tcf_mirred* FUNC23 (struct tc_action*) ; 

__attribute__((used)) static int FUNC24(struct net *net, struct nlattr *nla,
			   struct nlattr *est, struct tc_action **a,
			   int ovr, int bind, bool rtnl_held,
			   struct tcf_proto *tp,
			   struct netlink_ext_ack *extack)
{
	struct tc_action_net *tn = FUNC7(net, mirred_net_id);
	struct nlattr *tb[TCA_MIRRED_MAX + 1];
	struct tcf_chain *goto_ch = NULL;
	bool mac_header_xmit = false;
	struct tc_mirred *parm;
	struct tcf_mirred *m;
	struct net_device *dev;
	bool exists = false;
	int ret, err;
	u32 index;

	if (!nla) {
		FUNC1(extack, "Mirred requires attributes to be passed");
		return -EINVAL;
	}
	ret = FUNC9(tb, TCA_MIRRED_MAX, nla,
					  mirred_policy, extack);
	if (ret < 0)
		return ret;
	if (!tb[TCA_MIRRED_PARMS]) {
		FUNC1(extack, "Missing required mirred parameters");
		return -EINVAL;
	}
	parm = FUNC8(tb[TCA_MIRRED_PARMS]);
	index = parm->index;
	err = FUNC18(tn, &index, a, bind);
	if (err < 0)
		return err;
	exists = err;
	if (exists && bind)
		return 0;

	switch (parm->eaction) {
	case TCA_EGRESS_MIRROR:
	case TCA_EGRESS_REDIR:
	case TCA_INGRESS_REDIR:
	case TCA_INGRESS_MIRROR:
		break;
	default:
		if (exists)
			FUNC22(*a, bind);
		else
			FUNC19(tn, index);
		FUNC1(extack, "Unknown mirred option");
		return -EINVAL;
	}

	if (!exists) {
		if (!parm->ifindex) {
			FUNC19(tn, index);
			FUNC1(extack, "Specified device does not exist");
			return -EINVAL;
		}
		ret = FUNC20(tn, index, est, a,
				     &act_mirred_ops, bind, true);
		if (ret) {
			FUNC19(tn, index);
			return ret;
		}
		ret = ACT_P_CREATED;
	} else if (!ovr) {
		FUNC22(*a, bind);
		return -EEXIST;
	}

	m = FUNC23(*a);
	if (ret == ACT_P_CREATED)
		FUNC0(&m->tcfm_list);

	err = FUNC15(parm->action, tp, &goto_ch, extack);
	if (err < 0)
		goto release_idr;

	FUNC12(&m->tcf_lock);

	if (parm->ifindex) {
		dev = FUNC2(net, parm->ifindex);
		if (!dev) {
			FUNC14(&m->tcf_lock);
			err = -ENODEV;
			goto put_chain;
		}
		mac_header_xmit = FUNC3(dev);
		FUNC10(m->tcfm_dev, dev,
				   FUNC6(&m->tcf_lock));
		if (dev)
			FUNC4(dev);
		m->tcfm_mac_header_xmit = mac_header_xmit;
	}
	goto_ch = FUNC16(*a, parm->action, goto_ch);
	m->tcfm_eaction = parm->eaction;
	FUNC14(&m->tcf_lock);
	if (goto_ch)
		FUNC17(goto_ch);

	if (ret == ACT_P_CREATED) {
		FUNC11(&mirred_list_lock);
		FUNC5(&m->tcfm_list, &mirred_list);
		FUNC13(&mirred_list_lock);

		FUNC21(tn, *a);
	}

	return ret;
put_chain:
	if (goto_ch)
		FUNC17(goto_ch);
release_idr:
	FUNC22(*a, bind);
	return err;
}