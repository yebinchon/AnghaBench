#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct notifier_block {int dummy; } ;
struct netdev_notifier_change_info {int flags_changed; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* devconf_all; } ;
struct net {TYPE_3__ ipv6; } ;
struct TYPE_4__ {int /*<<< orphan*/  ndisc_notify; } ;
struct inet6_dev {TYPE_1__ cnf; } ;
struct TYPE_5__ {int /*<<< orphan*/  ndisc_notify; } ;

/* Variables and functions */
 int IFF_NOARP ; 
#define  NETDEV_CHANGE 132 
#define  NETDEV_CHANGEADDR 131 
#define  NETDEV_DOWN 130 
#define  NETDEV_NOTIFY_PEERS 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 struct net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net*,int) ; 
 struct inet6_dev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_dev*) ; 
 int /*<<< orphan*/  nd_tbl ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct net_device*) ; 
 struct net_device* FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct notifier_block *this, unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC8(ptr);
	struct netdev_notifier_change_info *change_info;
	struct net *net = FUNC0(dev);
	struct inet6_dev *idev;

	switch (event) {
	case NETDEV_CHANGEADDR:
		FUNC6(&nd_tbl, dev);
		FUNC1(0, net, false);
		/* fallthrough */
	case NETDEV_UP:
		idev = FUNC2(dev);
		if (!idev)
			break;
		if (idev->cnf.ndisc_notify ||
		    net->ipv6.devconf_all->ndisc_notify)
			FUNC4(dev);
		FUNC3(idev);
		break;
	case NETDEV_CHANGE:
		change_info = ptr;
		if (change_info->flags_changed & IFF_NOARP)
			FUNC6(&nd_tbl, dev);
		if (!FUNC9(dev))
			FUNC5(&nd_tbl, dev);
		break;
	case NETDEV_DOWN:
		FUNC7(&nd_tbl, dev);
		FUNC1(0, net, false);
		break;
	case NETDEV_NOTIFY_PEERS:
		FUNC4(dev);
		break;
	default:
		break;
	}

	return NOTIFY_DONE;
}