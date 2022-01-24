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
struct net_device {scalar_t__ type; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int /*<<< orphan*/ * s6_addr32; int /*<<< orphan*/  s6_addr; } ;
struct TYPE_5__ {TYPE_1__* table; } ;
struct TYPE_6__ {TYPE_2__ ctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_6LOWPAN ; 
 int /*<<< orphan*/  LOWPAN_IPHC_CTX_FLAG_ACTIVE ; 
 int LOWPAN_IPHC_CTX_TABLE_SIZE ; 
 int /*<<< orphan*/  LOWPAN_LLTYPE_IEEE802154 ; 
#define  NETDEV_CHANGE 130 
#define  NETDEV_DOWN 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 struct inet6_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*,struct in6_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_3__* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC8 (void*) ; 

__attribute__((used)) static int FUNC9(struct notifier_block *unused,
			unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC8(ptr);
	struct inet6_dev *idev;
	struct in6_addr addr;
	int i;

	if (dev->type != ARPHRD_6LOWPAN)
		return NOTIFY_DONE;

	idev = FUNC0(dev);
	if (!idev)
		return NOTIFY_DONE;

	switch (event) {
	case NETDEV_UP:
	case NETDEV_CHANGE:
		/* (802.15.4 6LoWPAN short address slaac handling */
		if (FUNC7(dev, LOWPAN_LLTYPE_IEEE802154) &&
		    FUNC3(addr.s6_addr + 8, dev) == 0) {
			FUNC1(&addr.s6_addr32[0],
					     FUNC5(0xFE800000), 0);
			FUNC2(idev, &addr, 0);
		}
		break;
	case NETDEV_DOWN:
		for (i = 0; i < LOWPAN_IPHC_CTX_TABLE_SIZE; i++)
			FUNC4(LOWPAN_IPHC_CTX_FLAG_ACTIVE,
				  &FUNC6(dev)->ctx.table[i].flags);
		break;
	default:
		return NOTIFY_DONE;
	}

	return NOTIFY_OK;
}