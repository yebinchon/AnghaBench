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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct can_dev_rcv_lists* rx_alldev_list; struct can_pkg_stats* pkg_stats; } ;
struct net {TYPE_1__ can; } ;
struct can_pkg_stats {int /*<<< orphan*/  matches_delta; int /*<<< orphan*/  matches; int /*<<< orphan*/  rx_frames_delta; int /*<<< orphan*/  rx_frames; } ;
struct can_dev_rcv_lists {int dummy; } ;
struct TYPE_4__ {scalar_t__ skbcnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct can_dev_rcv_lists* FUNC1 (struct net*,struct net_device*) ; 
 int FUNC2 (struct can_dev_rcv_lists*,struct sk_buff*) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct net* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  skbcounter ; 

__attribute__((used)) static void FUNC8(struct sk_buff *skb, struct net_device *dev)
{
	struct can_dev_rcv_lists *dev_rcv_lists;
	struct net *net = FUNC5(dev);
	struct can_pkg_stats *pkg_stats = net->can.pkg_stats;
	int matches;

	/* update statistics */
	pkg_stats->rx_frames++;
	pkg_stats->rx_frames_delta++;

	/* create non-zero unique skb identifier together with *skb */
	while (!(FUNC3(skb)->skbcnt))
		FUNC3(skb)->skbcnt = FUNC0(&skbcounter);

	FUNC6();

	/* deliver the packet to sockets listening on all devices */
	matches = FUNC2(net->can.rx_alldev_list, skb);

	/* find receive list for this device */
	dev_rcv_lists = FUNC1(net, dev);
	matches += FUNC2(dev_rcv_lists, skb);

	FUNC7();

	/* consume the skbuff allocated by the netdevice driver */
	FUNC4(skb);

	if (matches > 0) {
		pkg_stats->matches++;
		pkg_stats->matches_delta++;
	}
}