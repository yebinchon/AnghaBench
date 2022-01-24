#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int /*<<< orphan*/  ifindex; int /*<<< orphan*/  index_hlist; int /*<<< orphan*/  name; int /*<<< orphan*/  name_hlist; int /*<<< orphan*/  dev_list; } ;
struct net {int /*<<< orphan*/  dev_base_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dev_base_lock ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct net *net = FUNC4(dev);

	FUNC0();

	FUNC7(&dev_base_lock);
	FUNC6(&dev->dev_list, &net->dev_base_head);
	FUNC5(&dev->name_hlist, FUNC3(net, dev->name));
	FUNC5(&dev->index_hlist,
			   FUNC2(net, dev->ifindex));
	FUNC8(&dev_base_lock);

	FUNC1(net);
}