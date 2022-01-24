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
struct tc_action_ops {scalar_t__ (* lookup ) (struct net*,struct tc_action**,int) ;int /*<<< orphan*/  owner; } ;
struct tc_action {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  index ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct tc_action* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 size_t TCA_ACT_INDEX ; 
 size_t TCA_ACT_KIND ; 
 int /*<<< orphan*/  TCA_ACT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC6 (struct net*,struct tc_action**,int) ; 
 struct tc_action_ops* FUNC7 (struct nlattr*) ; 
 int /*<<< orphan*/  tcf_action_policy ; 

__attribute__((used)) static struct tc_action *FUNC8(struct net *net, struct nlattr *nla,
					  struct nlmsghdr *n, u32 portid,
					  struct netlink_ext_ack *extack)
{
	struct nlattr *tb[TCA_ACT_MAX + 1];
	const struct tc_action_ops *ops;
	struct tc_action *a;
	int index;
	int err;

	err = FUNC5(tb, TCA_ACT_MAX, nla,
					  tcf_action_policy, extack);
	if (err < 0)
		goto err_out;

	err = -EINVAL;
	if (tb[TCA_ACT_INDEX] == NULL ||
	    FUNC4(tb[TCA_ACT_INDEX]) < sizeof(index)) {
		FUNC1(extack, "Invalid TC action index value");
		goto err_out;
	}
	index = FUNC3(tb[TCA_ACT_INDEX]);

	err = -EINVAL;
	ops = FUNC7(tb[TCA_ACT_KIND]);
	if (!ops) { /* could happen in batch of actions */
		FUNC1(extack, "Specified TC action kind not found");
		goto err_out;
	}
	err = -ENOENT;
	if (ops->lookup(net, &a, index) == 0) {
		FUNC1(extack, "TC action with specified index not found");
		goto err_mod;
	}

	FUNC2(ops->owner);
	return a;

err_mod:
	FUNC2(ops->owner);
err_out:
	return FUNC0(err);
}