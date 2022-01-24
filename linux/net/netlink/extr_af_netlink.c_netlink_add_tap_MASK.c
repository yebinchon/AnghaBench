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
struct netlink_tap_net {int /*<<< orphan*/  netlink_tap_lock; int /*<<< orphan*/  netlink_tap_all; } ;
struct netlink_tap {int /*<<< orphan*/  module; int /*<<< orphan*/  list; TYPE_1__* dev; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_NETLINK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct netlink_tap_net* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netlink_tap_net_id ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct netlink_tap *nt)
{
	struct net *net = FUNC1(nt->dev);
	struct netlink_tap_net *nn = FUNC5(net, netlink_tap_net_id);

	if (FUNC6(nt->dev->type != ARPHRD_NETLINK))
		return -EINVAL;

	FUNC3(&nn->netlink_tap_lock);
	FUNC2(&nt->list, &nn->netlink_tap_all);
	FUNC4(&nn->netlink_tap_lock);

	FUNC0(nt->module);

	return 0;
}