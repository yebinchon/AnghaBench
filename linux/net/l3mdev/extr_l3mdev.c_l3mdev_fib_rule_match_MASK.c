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
struct net_device {TYPE_1__* l3mdev_ops; } ;
struct net {int dummy; } ;
struct flowi {int /*<<< orphan*/  flowi_iif; int /*<<< orphan*/  flowi_oif; } ;
struct fib_lookup_arg {int /*<<< orphan*/  table; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* l3mdev_fib_table ) (struct net_device*) ;} ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

int FUNC6(struct net *net, struct flowi *fl,
			  struct fib_lookup_arg *arg)
{
	struct net_device *dev;
	int rc = 0;

	FUNC2();

	dev = FUNC0(net, fl->flowi_oif);
	if (dev && FUNC1(dev) &&
	    dev->l3mdev_ops->l3mdev_fib_table) {
		arg->table = dev->l3mdev_ops->l3mdev_fib_table(dev);
		rc = 1;
		goto out;
	}

	dev = FUNC0(net, fl->flowi_iif);
	if (dev && FUNC1(dev) &&
	    dev->l3mdev_ops->l3mdev_fib_table) {
		arg->table = dev->l3mdev_ops->l3mdev_fib_table(dev);
		rc = 1;
		goto out;
	}

out:
	FUNC3();

	return rc;
}