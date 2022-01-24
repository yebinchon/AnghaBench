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
typedef  scalar_t__ u16 ;
struct netdev_adjacent {scalar_t__ ref_nr; int /*<<< orphan*/  list; scalar_t__ master; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct net_device {scalar_t__ name; TYPE_1__ dev; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct netdev_adjacent* FUNC1 (struct net_device*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct netdev_adjacent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct net_device*,struct net_device*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,scalar_t__,struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev,
					 struct net_device *adj_dev,
					 u16 ref_nr,
					 struct list_head *dev_list)
{
	struct netdev_adjacent *adj;

	FUNC7("Remove adjacency: dev %s adj_dev %s ref_nr %d\n",
		 dev->name, adj_dev->name, ref_nr);

	adj = FUNC1(adj_dev, dev_list);

	if (!adj) {
		FUNC8("Adjacency does not exist for device %s from %s\n",
		       dev->name, adj_dev->name);
		FUNC0(1);
		return;
	}

	if (adj->ref_nr > ref_nr) {
		FUNC7("adjacency: %s to %s ref_nr - %d = %d\n",
			 dev->name, adj_dev->name, ref_nr,
			 adj->ref_nr - ref_nr);
		adj->ref_nr -= ref_nr;
		return;
	}

	if (adj->master)
		FUNC9(&(dev->dev.kobj), "master");

	if (FUNC5(dev, adj_dev, dev_list))
		FUNC6(dev, adj_dev->name, dev_list);

	FUNC4(&adj->list);
	FUNC7("adjacency: dev_put for %s, because link removed from %s to %s\n",
		 adj_dev->name, dev->name, adj_dev->name);
	FUNC2(adj_dev);
	FUNC3(adj, rcu);
}