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
struct net_bridge_port {scalar_t__ state; struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  multicast_lock; TYPE_1__* dev; } ;
struct net {int dummy; } ;
struct br_mdb_entry {scalar_t__ ifindex; int /*<<< orphan*/  state; } ;
struct br_ip {int dummy; } ;
struct TYPE_2__ {scalar_t__ ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_MULTICAST_ENABLED ; 
 scalar_t__ BR_STATE_DISABLED ; 
 int EINVAL ; 
 int ENODEV ; 
 struct net_device* FUNC0 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct br_mdb_entry*,struct br_ip*) ; 
 int FUNC2 (struct net_bridge*,struct net_bridge_port*,struct br_ip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 struct net_bridge_port* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net *net, struct net_bridge *br,
			struct br_mdb_entry *entry)
{
	struct br_ip ip;
	struct net_device *dev;
	struct net_bridge_port *p = NULL;
	int ret;

	if (!FUNC5(br->dev) || !FUNC3(br, BROPT_MULTICAST_ENABLED))
		return -EINVAL;

	if (entry->ifindex != br->dev->ifindex) {
		dev = FUNC0(net, entry->ifindex);
		if (!dev)
			return -ENODEV;

		p = FUNC4(dev);
		if (!p || p->br != br || p->state == BR_STATE_DISABLED)
			return -EINVAL;
	}

	FUNC1(entry, &ip);

	FUNC6(&br->multicast_lock);
	ret = FUNC2(br, p, &ip, entry->state);
	FUNC7(&br->multicast_lock);
	return ret;
}