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
struct devlink_dpipe_table_ops {int /*<<< orphan*/  size_get; } ;
struct devlink_dpipe_table {char const* name; int counter_control_extern; int /*<<< orphan*/  list; void* priv; struct devlink_dpipe_table_ops* table_ops; } ;
struct devlink {int /*<<< orphan*/  lock; int /*<<< orphan*/  dpipe_table_list; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 struct devlink_dpipe_table* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct devlink *devlink,
				 const char *table_name,
				 struct devlink_dpipe_table_ops *table_ops,
				 void *priv, bool counter_control_extern)
{
	struct devlink_dpipe_table *table;

	if (FUNC1(&devlink->dpipe_table_list, table_name))
		return -EEXIST;

	if (FUNC0(!table_ops->size_get))
		return -EINVAL;

	table = FUNC2(sizeof(*table), GFP_KERNEL);
	if (!table)
		return -ENOMEM;

	table->name = table_name;
	table->table_ops = table_ops;
	table->priv = priv;
	table->counter_control_extern = counter_control_extern;

	FUNC4(&devlink->lock);
	FUNC3(&table->list, &devlink->dpipe_table_list);
	FUNC5(&devlink->lock);
	return 0;
}