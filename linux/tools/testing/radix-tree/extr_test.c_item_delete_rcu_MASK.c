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
struct xarray {int dummy; } ;
struct item {int /*<<< orphan*/  rcu_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  item_free_rcu ; 
 int /*<<< orphan*/  FUNC1 (struct item*,unsigned long) ; 
 struct item* FUNC2 (struct xarray*,unsigned long) ; 

int FUNC3(struct xarray *xa, unsigned long index)
{
	struct item *item = FUNC2(xa, index);

	if (item) {
		FUNC1(item, index);
		FUNC0(&item->rcu_head, item_free_rcu);
		return 1;
	}
	return 0;
}