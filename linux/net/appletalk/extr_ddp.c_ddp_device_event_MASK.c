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
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned long NETDEV_DOWN ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *this, unsigned long event,
			    void *ptr)
{
	struct net_device *dev = FUNC3(ptr);

	if (!FUNC2(FUNC1(dev), &init_net))
		return NOTIFY_DONE;

	if (event == NETDEV_DOWN)
		/* Discard any use of this */
		FUNC0(dev);

	return NOTIFY_DONE;
}