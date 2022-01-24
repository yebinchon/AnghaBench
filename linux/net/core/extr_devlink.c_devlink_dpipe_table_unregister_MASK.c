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
struct devlink_dpipe_table {int /*<<< orphan*/  list; } ;
struct devlink {int /*<<< orphan*/  lock; int /*<<< orphan*/  dpipe_table_list; } ;

/* Variables and functions */
 struct devlink_dpipe_table* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink_dpipe_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 

void FUNC5(struct devlink *devlink,
				    const char *table_name)
{
	struct devlink_dpipe_table *table;

	FUNC3(&devlink->lock);
	table = FUNC0(&devlink->dpipe_table_list,
					 table_name);
	if (!table)
		goto unlock;
	FUNC2(&table->list);
	FUNC4(&devlink->lock);
	FUNC1(table, rcu);
	return;
unlock:
	FUNC4(&devlink->lock);
}