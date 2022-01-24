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
struct net_device {int type; } ;

/* Variables and functions */
#define  ARPHRD_AX25 129 
#define  ARPHRD_ROSE 128 
 unsigned long NETDEV_DOWN ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *this,
			     unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC2(ptr);

	if (!FUNC1(FUNC0(dev), &init_net))
		return NOTIFY_DONE;

	if (event != NETDEV_DOWN)
		return NOTIFY_DONE;

	switch (dev->type) {
	case ARPHRD_ROSE:
		FUNC3(dev);
		break;
	case ARPHRD_AX25:
		FUNC4(dev);
		FUNC5(dev);
		break;
	}

	return NOTIFY_DONE;
}