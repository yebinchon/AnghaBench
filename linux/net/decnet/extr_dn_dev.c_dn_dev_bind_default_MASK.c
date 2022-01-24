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
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {struct net_device* loopback_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 () ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 TYPE_1__ init_net ; 

int FUNC4(__le16 *addr)
{
	struct net_device *dev;
	int rv;
	dev = FUNC2();
last_chance:
	if (dev) {
		rv = FUNC3(dev, addr);
		FUNC1(dev);
		if (rv == 0 || dev == init_net.loopback_dev)
			return rv;
	}
	dev = init_net.loopback_dev;
	FUNC0(dev);
	goto last_chance;
}