#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct net_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct net *net = FUNC5(skb->sk);
	u8 addr;

	FUNC3();
	for (addr = cb->args[0]; addr < 64; addr++) {
		struct net_device *dev = FUNC2(net, addr << 2);

		if (!dev)
			continue;

		if (FUNC1(skb, dev, addr << 2, FUNC0(cb->skb).portid,
			       cb->nlh->nlmsg_seq, RTM_NEWROUTE) < 0)
			goto out;
	}

out:
	FUNC4();
	cb->args[0] = addr;

	return skb->len;
}