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
struct net_device {scalar_t__ type; int /*<<< orphan*/  name; int /*<<< orphan*/  priv_flags; } ;
struct failover_ops {scalar_t__ type; int /*<<< orphan*/  name; int /*<<< orphan*/  priv_flags; } ;
struct failover {int /*<<< orphan*/  list; int /*<<< orphan*/  failover_dev; int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct failover* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IFF_FAILOVER ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  failover_list ; 
 int /*<<< orphan*/  failover_lock ; 
 struct failover* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct failover *FUNC9(struct net_device *dev,
				   struct failover_ops *ops)
{
	struct failover *failover;

	if (dev->type != ARPHRD_ETHER)
		return FUNC0(-EINVAL);

	failover = FUNC3(sizeof(*failover), GFP_KERNEL);
	if (!failover)
		return FUNC0(-ENOMEM);

	FUNC6(failover->ops, ops);
	FUNC1(dev);
	dev->priv_flags |= IFF_FAILOVER;
	FUNC6(failover->failover_dev, dev);

	FUNC7(&failover_lock);
	FUNC4(&failover->list, &failover_list);
	FUNC8(&failover_lock);

	FUNC5(dev, "failover master:%s registered\n", dev->name);

	FUNC2(dev);

	return failover;
}