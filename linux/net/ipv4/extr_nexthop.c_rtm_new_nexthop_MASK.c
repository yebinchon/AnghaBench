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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nh_config {int dummy; } ;
struct nexthop {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nexthop*) ; 
 int FUNC1 (struct nexthop*) ; 
 struct nexthop* FUNC2 (struct net*,struct nh_config*,struct netlink_ext_ack*) ; 
 int FUNC3 (struct net*,struct sk_buff*,struct nlmsghdr*,struct nh_config*,struct netlink_ext_ack*) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct nlmsghdr *nlh,
			   struct netlink_ext_ack *extack)
{
	struct net *net = FUNC4(skb->sk);
	struct nh_config cfg;
	struct nexthop *nh;
	int err;

	err = FUNC3(net, skb, nlh, &cfg, extack);
	if (!err) {
		nh = FUNC2(net, &cfg, extack);
		if (FUNC0(nh))
			err = FUNC1(nh);
	}

	return err;
}