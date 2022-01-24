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
struct netdev_adjacent {int ref_nr; int master; int ignore; int /*<<< orphan*/  list; void* private; struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct net_device {int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct netdev_adjacent* FUNC0 (struct net_device*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct netdev_adjacent*) ; 
 struct netdev_adjacent* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC7 (struct net_device*,struct net_device*,struct list_head*) ; 
 int FUNC8 (struct net_device*,struct net_device*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int /*<<< orphan*/ ,struct list_head*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev,
					struct net_device *adj_dev,
					struct list_head *dev_list,
					void *private, bool master)
{
	struct netdev_adjacent *adj;
	int ret;

	adj = FUNC0(adj_dev, dev_list);

	if (adj) {
		adj->ref_nr += 1;
		FUNC10("Insert adjacency: dev %s adj_dev %s adj->ref_nr %d\n",
			 dev->name, adj_dev->name, adj->ref_nr);

		return 0;
	}

	adj = FUNC4(sizeof(*adj), GFP_KERNEL);
	if (!adj)
		return -ENOMEM;

	adj->dev = adj_dev;
	adj->master = master;
	adj->ref_nr = 1;
	adj->private = private;
	adj->ignore = false;
	FUNC1(adj_dev);

	FUNC10("Insert adjacency: dev %s adj_dev %s adj->ref_nr %d; dev_hold on %s\n",
		 dev->name, adj_dev->name, adj->ref_nr, adj_dev->name);

	if (FUNC7(dev, adj_dev, dev_list)) {
		ret = FUNC8(dev, adj_dev, dev_list);
		if (ret)
			goto free_adj;
	}

	/* Ensure that master link is always the first item in list. */
	if (master) {
		ret = FUNC11(&(dev->dev.kobj),
					&(adj_dev->dev.kobj), "master");
		if (ret)
			goto remove_symlinks;

		FUNC5(&adj->list, dev_list);
	} else {
		FUNC6(&adj->list, dev_list);
	}

	return 0;

remove_symlinks:
	if (FUNC7(dev, adj_dev, dev_list))
		FUNC9(dev, adj_dev->name, dev_list);
free_adj:
	FUNC3(adj);
	FUNC2(adj_dev);

	return ret;
}