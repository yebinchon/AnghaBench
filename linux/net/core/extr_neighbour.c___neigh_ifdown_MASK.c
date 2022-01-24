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
struct net_device {int dummy; } ;
struct neigh_table {int /*<<< orphan*/  proxy_queue; int /*<<< orphan*/  proxy_timer; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct neigh_table*,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct neigh_table*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct neigh_table *tbl, struct net_device *dev,
			  bool skip_perm)
{
	FUNC4(&tbl->lock);
	FUNC1(tbl, dev, skip_perm);
	FUNC2(tbl, dev);

	FUNC0(&tbl->proxy_timer);
	FUNC3(&tbl->proxy_queue);
	return 0;
}