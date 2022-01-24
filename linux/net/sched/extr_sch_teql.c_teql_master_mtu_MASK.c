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
struct teql_master {struct Qdisc* slaves; } ;
struct net_device {int mtu; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 struct Qdisc* FUNC0 (struct Qdisc*) ; 
 struct teql_master* FUNC1 (struct net_device*) ; 
 TYPE_1__* FUNC2 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, int new_mtu)
{
	struct teql_master *m = FUNC1(dev);
	struct Qdisc *q;

	q = m->slaves;
	if (q) {
		do {
			if (new_mtu > FUNC2(q)->mtu)
				return -EINVAL;
		} while ((q = FUNC0(q)) != m->slaves);
	}

	dev->mtu = new_mtu;
	return 0;
}