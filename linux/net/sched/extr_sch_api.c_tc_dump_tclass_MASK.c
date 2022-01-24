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
struct tcmsg {int /*<<< orphan*/  tcm_ifindex; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct netlink_callback {int* args; int /*<<< orphan*/  nlh; } ;
struct netdev_queue {int /*<<< orphan*/  qdisc_sleeping; } ;
struct net_device {int /*<<< orphan*/  qdisc; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct tcmsg* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,struct tcmsg*,struct netlink_callback*,int*,int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct tcmsg *tcm = FUNC3(cb->nlh);
	struct net *net = FUNC5(skb->sk);
	struct netdev_queue *dev_queue;
	struct net_device *dev;
	int t, s_t;

	if (FUNC4(cb->nlh) < sizeof(*tcm))
		return 0;
	dev = FUNC0(net, tcm->tcm_ifindex);
	if (!dev)
		return 0;

	s_t = cb->args[0];
	t = 0;

	if (FUNC6(dev->qdisc, skb, tcm, cb, &t, s_t) < 0)
		goto done;

	dev_queue = FUNC1(dev);
	if (dev_queue &&
	    FUNC6(dev_queue->qdisc_sleeping, skb, tcm, cb,
				&t, s_t) < 0)
		goto done;

done:
	cb->args[0] = t;

	FUNC2(dev);
	return skb->len;
}