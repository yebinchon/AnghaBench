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
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct tc_action**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct net *net, u32 portid, struct nlmsghdr *n,
	       struct tc_action *actions[], int event,
	       struct netlink_ext_ack *extack)
{
	struct sk_buff *skb;

	skb = FUNC1(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!skb)
		return -ENOBUFS;
	if (FUNC4(skb, actions, portid, n->nlmsg_seq, 0, event,
			 0, 1) <= 0) {
		FUNC0(extack, "Failed to fill netlink attributes while adding TC action");
		FUNC2(skb);
		return -EINVAL;
	}

	return FUNC3(skb, net, portid);
}