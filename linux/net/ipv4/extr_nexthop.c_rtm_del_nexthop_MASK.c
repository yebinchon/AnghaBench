#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nl_info {int /*<<< orphan*/  portid; struct net* nl_net; struct nlmsghdr* nlh; } ;
struct nexthop {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 struct nexthop* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nlmsghdr*,int /*<<< orphan*/ *,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,struct nexthop*,struct nl_info*) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct nlmsghdr *nlh,
			   struct netlink_ext_ack *extack)
{
	struct net *net = FUNC4(skb->sk);
	struct nl_info nlinfo = {
		.nlh = nlh,
		.nl_net = net,
		.portid = FUNC0(skb).portid,
	};
	struct nexthop *nh;
	int err;
	u32 id;

	err = FUNC2(nlh, &id, extack);
	if (err)
		return err;

	nh = FUNC1(net, id);
	if (!nh)
		return -ENOENT;

	FUNC3(net, nh, &nlinfo);

	return 0;
}