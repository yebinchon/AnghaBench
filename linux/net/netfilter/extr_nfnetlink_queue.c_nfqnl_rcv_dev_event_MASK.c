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
struct net_device {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 unsigned long NETDEV_DOWN ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct notifier_block *this,
		    unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC1(ptr);

	/* Drop any packets associated with the downed device */
	if (event == NETDEV_DOWN)
		FUNC2(FUNC0(dev), dev->ifindex);
	return NOTIFY_DONE;
}