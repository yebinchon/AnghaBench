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
struct tcamsg {scalar_t__ tca__pad2; scalar_t__ tca__pad1; int /*<<< orphan*/  tca_family; } ;
struct tc_action_ops {int (* walk ) (struct net*,struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,struct tc_action_ops const*,struct netlink_ext_ack*) ;int /*<<< orphan*/  owner; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_len; int nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int NLM_F_ECHO ; 
 int NLM_F_ROOT ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  RTM_DELACTION ; 
 int /*<<< orphan*/  RTNLGRP_TC ; 
 size_t TCA_ACT_KIND ; 
 int /*<<< orphan*/  TCA_ACT_MAX ; 
 int /*<<< orphan*/  TCA_ACT_TAB ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct tcamsg* FUNC8 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned char* FUNC11 (struct sk_buff*) ; 
 int FUNC12 (struct net*,struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,struct tc_action_ops const*,struct netlink_ext_ack*) ; 
 struct tc_action_ops* FUNC13 (struct nlattr*) ; 
 int /*<<< orphan*/  tcf_action_policy ; 

__attribute__((used)) static int FUNC14(struct net *net, struct nlattr *nla,
			    struct nlmsghdr *n, u32 portid,
			    struct netlink_ext_ack *extack)
{
	struct sk_buff *skb;
	unsigned char *b;
	struct nlmsghdr *nlh;
	struct tcamsg *t;
	struct netlink_callback dcb;
	struct nlattr *nest;
	struct nlattr *tb[TCA_ACT_MAX + 1];
	const struct tc_action_ops *ops;
	struct nlattr *kind;
	int err = -ENOMEM;

	skb = FUNC1(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!skb)
		return err;

	b = FUNC11(skb);

	err = FUNC7(tb, TCA_ACT_MAX, nla,
					  tcf_action_policy, extack);
	if (err < 0)
		goto err_out;

	err = -EINVAL;
	kind = tb[TCA_ACT_KIND];
	ops = FUNC13(kind);
	if (!ops) { /*some idjot trying to flush unknown action */
		FUNC0(extack, "Cannot flush unknown TC action");
		goto err_out;
	}

	nlh = FUNC9(skb, portid, n->nlmsg_seq, RTM_DELACTION,
			sizeof(*t), 0);
	if (!nlh) {
		FUNC0(extack, "Failed to create TC action flush notification");
		goto out_module_put;
	}
	t = FUNC8(nlh);
	t->tca_family = AF_UNSPEC;
	t->tca__pad1 = 0;
	t->tca__pad2 = 0;

	nest = FUNC6(skb, TCA_ACT_TAB);
	if (!nest) {
		FUNC0(extack, "Failed to add new netlink message");
		goto out_module_put;
	}

	err = ops->walk(net, skb, &dcb, RTM_DELACTION, ops, extack);
	if (err <= 0) {
		FUNC4(skb, nest);
		goto out_module_put;
	}

	FUNC5(skb, nest);

	nlh->nlmsg_len = FUNC11(skb) - b;
	nlh->nlmsg_flags |= NLM_F_ROOT;
	FUNC3(ops->owner);
	err = FUNC10(skb, net, portid, RTNLGRP_TC,
			     n->nlmsg_flags & NLM_F_ECHO);
	if (err > 0)
		return 0;
	if (err < 0)
		FUNC0(extack, "Failed to send TC action flush notification");

	return err;

out_module_put:
	FUNC3(ops->owner);
err_out:
	FUNC2(skb);
	return err;
}