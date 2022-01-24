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
#define  NETDEV_REBOOT 129 
#define  NETDEV_UNREGISTER 128 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 struct net_device* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *this,
				 unsigned long event, void *ptr)
{
	struct net_device *event_dev = FUNC0(ptr);

	switch (event) {
	case NETDEV_REBOOT:
	case NETDEV_UNREGISTER:
		FUNC1(event_dev);
		return NOTIFY_OK;
	default:
		return NOTIFY_DONE;
	}
}