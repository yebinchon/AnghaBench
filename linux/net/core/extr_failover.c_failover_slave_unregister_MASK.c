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
struct net_device {int priv_flags; int /*<<< orphan*/  perm_addr; } ;
struct failover_ops {int /*<<< orphan*/  (* slave_unregister ) (struct net_device*,struct net_device*) ;scalar_t__ (* slave_pre_unregister ) (struct net_device*,struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int IFF_FAILOVER_SLAVE ; 
 int IFF_LIVE_RENAME_OK ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,struct failover_ops**) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,struct net_device*) ; 

int FUNC7(struct net_device *slave_dev)
{
	struct net_device *failover_dev;
	struct failover_ops *fops;

	if (!FUNC4(slave_dev))
		goto done;

	FUNC0();

	failover_dev = FUNC1(slave_dev->perm_addr, &fops);
	if (!failover_dev)
		goto done;

	if (fops && fops->slave_pre_unregister &&
	    fops->slave_pre_unregister(slave_dev, failover_dev))
		goto done;

	FUNC2(slave_dev);
	FUNC3(slave_dev, failover_dev);
	slave_dev->priv_flags &= ~(IFF_FAILOVER_SLAVE | IFF_LIVE_RENAME_OK);

	if (fops && fops->slave_unregister &&
	    !fops->slave_unregister(slave_dev, failover_dev))
		return NOTIFY_OK;

done:
	return NOTIFY_DONE;
}