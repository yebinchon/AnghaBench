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
struct tcf_idrinfo {int dummy; } ;
struct tc_action_ops {int dummy; } ;
struct tc_action_net {struct tcf_idrinfo* idrinfo; } ;
struct sk_buff {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_callback {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int RTM_DELACTION ; 
 int RTM_GETACTION ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int FUNC2 (struct tcf_idrinfo*,struct sk_buff*,struct tc_action_ops const*) ; 
 int FUNC3 (struct tcf_idrinfo*,struct sk_buff*,struct netlink_callback*) ; 

int FUNC4(struct tc_action_net *tn, struct sk_buff *skb,
		       struct netlink_callback *cb, int type,
		       const struct tc_action_ops *ops,
		       struct netlink_ext_ack *extack)
{
	struct tcf_idrinfo *idrinfo = tn->idrinfo;

	if (type == RTM_DELACTION) {
		return FUNC2(idrinfo, skb, ops);
	} else if (type == RTM_GETACTION) {
		return FUNC3(idrinfo, skb, cb);
	} else {
		FUNC1(1, "tcf_generic_walker: unknown command %d\n", type);
		FUNC0(extack, "tcf_generic_walker: unknown command");
		return -EINVAL;
	}
}