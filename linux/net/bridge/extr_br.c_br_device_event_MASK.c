#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct notifier_block {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_notifier_pre_changeaddr_info {int /*<<< orphan*/  dev_addr; } ;
struct net_device {int priv_flags; int /*<<< orphan*/  dev_addr; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {TYPE_1__* dev; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  addr_assign_type; } ;

/* Variables and functions */
 int IFF_EBRIDGE ; 
 int IFF_UP ; 
#define  NETDEV_CHANGE 138 
#define  NETDEV_CHANGEADDR 137 
#define  NETDEV_CHANGEMTU 136 
#define  NETDEV_CHANGENAME 135 
#define  NETDEV_DOWN 134 
#define  NETDEV_FEAT_CHANGE 133 
#define  NETDEV_PRE_CHANGEADDR 132 
#define  NETDEV_PRE_TYPE_CHANGE 131 
 unsigned long NETDEV_REGISTER ; 
#define  NETDEV_RESEND_IGMP 130 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int /*<<< orphan*/  NET_ADDR_SET ; 
 int NOTIFY_BAD ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge_port*,int*) ; 
 struct net_bridge_port* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_bridge_port*) ; 
 int FUNC8 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int FUNC10 (struct net_bridge_port*) ; 
 int FUNC11 (struct net_device*,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_bridge_port*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int const,TYPE_1__*) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct net_device* FUNC15 (void*) ; 
 struct netlink_ext_ack* FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct notifier_block *unused, unsigned long event, void *ptr)
{
	struct netlink_ext_ack *extack = FUNC16(ptr);
	struct netdev_notifier_pre_changeaddr_info *prechaddr_info;
	struct net_device *dev = FUNC15(ptr);
	struct net_bridge_port *p;
	struct net_bridge *br;
	bool notified = false;
	bool changed_addr;
	int err;

	if (dev->priv_flags & IFF_EBRIDGE) {
		err = FUNC11(dev, event, ptr);
		if (err)
			return FUNC20(err);

		if (event == NETDEV_REGISTER) {
			/* register of bridge completed, add sysfs entries */
			FUNC9(dev);
			return NOTIFY_DONE;
		}
	}

	/* not a port of a bridge */
	p = FUNC5(dev);
	if (!p)
		return NOTIFY_DONE;

	br = p->br;

	switch (event) {
	case NETDEV_CHANGEMTU:
		FUNC3(br);
		break;

	case NETDEV_PRE_CHANGEADDR:
		if (br->dev->addr_assign_type == NET_ADDR_SET)
			break;
		prechaddr_info = ptr;
		err = FUNC14(br->dev,
						prechaddr_info->dev_addr,
						extack);
		if (err)
			return FUNC20(err);
		break;

	case NETDEV_CHANGEADDR:
		FUNC21(&br->lock);
		FUNC1(p, dev->dev_addr);
		changed_addr = FUNC8(br);
		FUNC22(&br->lock);

		if (changed_addr)
			FUNC13(NETDEV_CHANGEADDR, br->dev);

		break;

	case NETDEV_CHANGE:
		FUNC4(p, &notified);
		break;

	case NETDEV_FEAT_CHANGE:
		FUNC17(br->dev);
		break;

	case NETDEV_DOWN:
		FUNC21(&br->lock);
		if (br->dev->flags & IFF_UP) {
			FUNC6(p);
			notified = true;
		}
		FUNC22(&br->lock);
		break;

	case NETDEV_UP:
		if (FUNC19(br->dev) && FUNC18(dev)) {
			FUNC21(&br->lock);
			FUNC7(p);
			notified = true;
			FUNC22(&br->lock);
		}
		break;

	case NETDEV_UNREGISTER:
		FUNC0(br, dev);
		break;

	case NETDEV_CHANGENAME:
		err = FUNC10(p);
		if (err)
			return FUNC20(err);
		break;

	case NETDEV_PRE_TYPE_CHANGE:
		/* Forbid underlaying device to change its type. */
		return NOTIFY_BAD;

	case NETDEV_RESEND_IGMP:
		/* Propagate to master device */
		FUNC13(event, br->dev);
		break;
	}

	if (event != NETDEV_UNREGISTER)
		FUNC12(p, event);

	/* Events that may cause spanning tree to refresh */
	if (!notified && (event == NETDEV_CHANGEADDR || event == NETDEV_UP ||
			  event == NETDEV_CHANGE || event == NETDEV_DOWN))
		FUNC2(RTM_NEWLINK, NULL, p);

	return NOTIFY_DONE;
}