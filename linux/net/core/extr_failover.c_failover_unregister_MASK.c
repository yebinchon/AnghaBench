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
struct net_device {int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  name; } ;
struct failover {int /*<<< orphan*/  list; int /*<<< orphan*/  failover_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_FAILOVER ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  failover_lock ; 
 int /*<<< orphan*/  FUNC1 (struct failover*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct failover *failover)
{
	struct net_device *failover_dev;

	failover_dev = FUNC4(failover->failover_dev);

	FUNC3(failover_dev, "failover master:%s unregistered\n",
		    failover_dev->name);

	failover_dev->priv_flags &= ~IFF_FAILOVER;
	FUNC0(failover_dev);

	FUNC5(&failover_lock);
	FUNC2(&failover->list);
	FUNC6(&failover_lock);

	FUNC1(failover);
}