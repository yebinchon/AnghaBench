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
#define  NETDEV_CHANGE 133 
#define  NETDEV_CHANGENAME 132 
#define  NETDEV_DOWN 131 
#define  NETDEV_REGISTER 130 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 int FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (void*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int
FUNC6(struct notifier_block *this, unsigned long event, void *ptr)
{
	struct net_device *event_dev = FUNC4(ptr);

	/* Skip parent events */
	if (FUNC5(event_dev))
		return NOTIFY_DONE;

	switch (event) {
	case NETDEV_REGISTER:
		return FUNC2(event_dev);
	case NETDEV_UNREGISTER:
		return FUNC3(event_dev);
	case NETDEV_UP:
	case NETDEV_DOWN:
	case NETDEV_CHANGE:
		return FUNC0(event_dev);
	case NETDEV_CHANGENAME:
		return FUNC1(event_dev);
	default:
		return NOTIFY_DONE;
	}
}