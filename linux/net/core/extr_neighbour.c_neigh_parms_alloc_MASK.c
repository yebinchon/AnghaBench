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
struct net_device_ops {scalar_t__ (* ndo_neigh_setup ) (struct net_device*,struct neigh_parms*) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct neigh_table {int /*<<< orphan*/  lock; TYPE_1__ parms; } ;
struct neigh_parms {int /*<<< orphan*/  list; int /*<<< orphan*/ * sysctl_table; int /*<<< orphan*/  net; struct net_device* dev; int /*<<< orphan*/  reachable_time; int /*<<< orphan*/  refcnt; struct neigh_table* tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASE_REACHABLE_TIME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct neigh_parms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct neigh_parms*) ; 
 struct neigh_parms* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct neigh_parms*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (struct net_device*,struct neigh_parms*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct net*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

struct neigh_parms *FUNC14(struct net_device *dev,
				      struct neigh_table *tbl)
{
	struct neigh_parms *p;
	struct net *net = FUNC2(dev);
	const struct net_device_ops *ops = dev->netdev_ops;

	p = FUNC5(&tbl->parms, sizeof(*p), GFP_KERNEL);
	if (p) {
		p->tbl		  = tbl;
		FUNC9(&p->refcnt, 1);
		p->reachable_time =
				FUNC8(FUNC0(p, BASE_REACHABLE_TIME));
		FUNC1(dev);
		p->dev = dev;
		FUNC12(&p->net, net);
		p->sysctl_table = NULL;

		if (ops->ndo_neigh_setup && ops->ndo_neigh_setup(dev, p)) {
			FUNC3(dev);
			FUNC4(p);
			return NULL;
		}

		FUNC11(&tbl->lock);
		FUNC6(&p->list, &tbl->parms.list);
		FUNC13(&tbl->lock);

		FUNC7(p);
	}
	return p;
}