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
struct rtnl_link_ops {size_t (* get_slave_size ) (struct net_device*,struct net_device const*) ;} ;
struct nlattr {int dummy; } ;
struct net_device {struct rtnl_link_ops* rtnl_link_ops; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net_device*) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t FUNC4 (struct net_device*,struct net_device const*) ; 

__attribute__((used)) static size_t FUNC5(const struct net_device *dev)
{
	struct net_device *master_dev;
	const struct rtnl_link_ops *ops;
	size_t size = 0;

	FUNC2();

	master_dev = FUNC0((struct net_device *)dev);
	if (!master_dev)
		goto out;

	ops = master_dev->rtnl_link_ops;
	if (!ops || !ops->get_slave_size)
		goto out;
	/* IFLA_INFO_SLAVE_DATA + nested data */
	size = FUNC1(sizeof(struct nlattr)) +
	       ops->get_slave_size(master_dev, dev);

out:
	FUNC3();
	return size;
}