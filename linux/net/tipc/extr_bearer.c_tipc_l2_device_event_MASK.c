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
struct tipc_bearer {int /*<<< orphan*/  addr; TYPE_1__* media; int /*<<< orphan*/  mtu; int /*<<< orphan*/  up; } ;
struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ dev_addr; int /*<<< orphan*/  mtu; int /*<<< orphan*/  tipc_ptr; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* raw2addr ) (struct tipc_bearer*,int /*<<< orphan*/ *,char*) ;} ;

/* Variables and functions */
#define  NETDEV_CHANGE 134 
#define  NETDEV_CHANGEADDR 133 
#define  NETDEV_CHANGEMTU 132 
#define  NETDEV_CHANGENAME 131 
#define  NETDEV_GOING_DOWN 130 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC0 (struct net*,struct tipc_bearer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct net* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct tipc_bearer* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_bearer*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net*,struct tipc_bearer*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,struct tipc_bearer*,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct notifier_block *nb, unsigned long evt,
				void *ptr)
{
	struct net_device *dev = FUNC3(ptr);
	struct net *net = FUNC2(dev);
	struct tipc_bearer *b;

	b = FUNC6(dev->tipc_ptr);
	if (!b)
		return NOTIFY_DONE;

	FUNC11(dev, b, evt);
	switch (evt) {
	case NETDEV_CHANGE:
		if (FUNC4(dev) && FUNC5(dev)) {
			FUNC8(0, &b->up);
			break;
		}
		/* fall through */
	case NETDEV_GOING_DOWN:
		FUNC1(0, &b->up);
		FUNC10(net, b);
		break;
	case NETDEV_UP:
		FUNC8(0, &b->up);
		break;
	case NETDEV_CHANGEMTU:
		if (FUNC9(dev, 0)) {
			FUNC0(net, b);
			break;
		}
		b->mtu = dev->mtu;
		FUNC10(net, b);
		break;
	case NETDEV_CHANGEADDR:
		b->media->raw2addr(b, &b->addr,
				   (char *)dev->dev_addr);
		FUNC10(net, b);
		break;
	case NETDEV_UNREGISTER:
	case NETDEV_CHANGENAME:
		FUNC0(net, b);
		break;
	}
	return NOTIFY_OK;
}