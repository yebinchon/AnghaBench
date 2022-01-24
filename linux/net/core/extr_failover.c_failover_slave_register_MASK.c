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
struct netdev_lag_upper_info {int /*<<< orphan*/  tx_type; } ;
struct net_device {scalar_t__ type; int priv_flags; int /*<<< orphan*/  name; int /*<<< orphan*/  perm_addr; } ;
struct failover_ops {int /*<<< orphan*/  (* slave_register ) (struct net_device*,struct net_device*) ;int /*<<< orphan*/  slave_handle_frame; scalar_t__ (* slave_pre_register ) (struct net_device*,struct net_device*) ;} ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int IFF_FAILOVER_SLAVE ; 
 int IFF_LIVE_RENAME_OK ; 
 int /*<<< orphan*/  NETDEV_LAG_TX_TYPE_ACTIVEBACKUP ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,struct failover_ops**) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int,...) ; 
 int FUNC3 (struct net_device*,struct net_device*,int /*<<< orphan*/ *,struct netdev_lag_upper_info*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *slave_dev)
{
	struct netdev_lag_upper_info lag_upper_info;
	struct net_device *failover_dev;
	struct failover_ops *fops;
	int err;

	if (slave_dev->type != ARPHRD_ETHER)
		goto done;

	FUNC0();

	failover_dev = FUNC1(slave_dev->perm_addr, &fops);
	if (!failover_dev)
		goto done;

	if (fops && fops->slave_pre_register &&
	    fops->slave_pre_register(slave_dev, failover_dev))
		goto done;

	err = FUNC4(slave_dev, fops->slave_handle_frame,
					 failover_dev);
	if (err) {
		FUNC2(slave_dev, "can not register failover rx handler (err = %d)\n",
			   err);
		goto done;
	}

	lag_upper_info.tx_type = NETDEV_LAG_TX_TYPE_ACTIVEBACKUP;
	err = FUNC3(slave_dev, failover_dev, NULL,
					   &lag_upper_info, NULL);
	if (err) {
		FUNC2(slave_dev, "can not set failover device %s (err = %d)\n",
			   failover_dev->name, err);
		goto err_upper_link;
	}

	slave_dev->priv_flags |= (IFF_FAILOVER_SLAVE | IFF_LIVE_RENAME_OK);

	if (fops && fops->slave_register &&
	    !fops->slave_register(slave_dev, failover_dev))
		return NOTIFY_OK;

	FUNC6(slave_dev, failover_dev);
	slave_dev->priv_flags &= ~(IFF_FAILOVER_SLAVE | IFF_LIVE_RENAME_OK);
err_upper_link:
	FUNC5(slave_dev);
done:
	return NOTIFY_DONE;
}