#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {TYPE_1__* netdev_ops; } ;
struct neighbour {TYPE_2__* tbl; int /*<<< orphan*/  parms; scalar_t__ arp_queue_len_bytes; int /*<<< orphan*/  lock; int /*<<< orphan*/  arp_queue; int /*<<< orphan*/  dead; struct net_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  entries; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* ndo_neigh_destroy ) (struct net_device*,struct neighbour*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  destroys ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct neighbour*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,struct neighbour*) ; 
 scalar_t__ FUNC7 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,struct neighbour*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct neighbour *neigh)
{
	struct net_device *dev = neigh->dev;

	FUNC0(neigh->tbl, destroys);

	if (!neigh->dead) {
		FUNC9("Destroying alive neighbour %p\n", neigh);
		FUNC4();
		return;
	}

	if (FUNC7(neigh))
		FUNC9("Impossible event\n");

	FUNC11(&neigh->lock);
	FUNC1(&neigh->arp_queue);
	FUNC12(&neigh->lock);
	neigh->arp_queue_len_bytes = 0;

	if (dev->netdev_ops->ndo_neigh_destroy)
		dev->netdev_ops->ndo_neigh_destroy(dev, neigh);

	FUNC3(dev);
	FUNC8(neigh->parms);

	FUNC6(2, "neigh %p is destroyed\n", neigh);

	FUNC2(&neigh->tbl->entries);
	FUNC5(neigh, rcu);
}