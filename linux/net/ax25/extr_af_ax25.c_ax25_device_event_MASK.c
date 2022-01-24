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
struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_AX25 ; 
#define  NETDEV_DOWN 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC6 (void*) ; 

__attribute__((used)) static int FUNC7(struct notifier_block *this, unsigned long event,
			     void *ptr)
{
	struct net_device *dev = FUNC6(ptr);

	if (!FUNC5(FUNC4(dev), &init_net))
		return NOTIFY_DONE;

	/* Reject non AX.25 devices */
	if (dev->type != ARPHRD_AX25)
		return NOTIFY_DONE;

	switch (event) {
	case NETDEV_UP:
		FUNC1(dev);
		break;
	case NETDEV_DOWN:
		FUNC2(dev);
		FUNC3(dev);
		FUNC0(dev);
		break;
	default:
		break;
	}

	return NOTIFY_DONE;
}