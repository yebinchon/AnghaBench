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
struct netpoll_info {int /*<<< orphan*/  rcu; int /*<<< orphan*/  refcnt; } ;
struct netpoll {TYPE_1__* dev; } ;
struct net_device_ops {int /*<<< orphan*/  (* ndo_netpoll_cleanup ) (TYPE_1__*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  npinfo; struct net_device_ops* netdev_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netpoll_srcu ; 
 int /*<<< orphan*/  rcu_cleanup_netpoll_info ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct netpoll_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct netpoll *np)
{
	struct netpoll_info *npinfo;

	npinfo = FUNC3(np->dev->npinfo);
	if (!npinfo)
		return;

	FUNC5(&netpoll_srcu);

	if (FUNC2(&npinfo->refcnt)) {
		const struct net_device_ops *ops;

		ops = np->dev->netdev_ops;
		if (ops->ndo_netpoll_cleanup)
			ops->ndo_netpoll_cleanup(np->dev);

		FUNC0(np->dev->npinfo, NULL);
		FUNC1(&npinfo->rcu, rcu_cleanup_netpoll_info);
	} else
		FUNC0(np->dev->npinfo, NULL);
}