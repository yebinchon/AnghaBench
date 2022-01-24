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
struct flowi6 {scalar_t__ flowi6_oif; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {struct dst_entry* (* l3mdev_link_scope_lookup ) (struct net_device*,struct flowi6*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct net_device* FUNC1 (struct net*,scalar_t__) ; 
 struct net_device* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct dst_entry* FUNC6 (struct net_device*,struct flowi6*) ; 

struct dst_entry *FUNC7(struct net *net,
					   struct flowi6 *fl6)
{
	struct dst_entry *dst = NULL;
	struct net_device *dev;

	FUNC0(!FUNC5());
	if (fl6->flowi6_oif) {
		dev = FUNC1(net, fl6->flowi6_oif);
		if (dev && FUNC4(dev))
			dev = FUNC2(dev);

		if (dev && FUNC3(dev) &&
		    dev->l3mdev_ops->l3mdev_link_scope_lookup)
			dst = dev->l3mdev_ops->l3mdev_link_scope_lookup(dev, fl6);
	}

	return dst;
}