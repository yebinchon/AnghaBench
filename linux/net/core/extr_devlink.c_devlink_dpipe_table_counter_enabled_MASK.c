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
struct devlink_dpipe_table {int counters_enabled; } ;
struct devlink {int /*<<< orphan*/  dpipe_table_list; } ;

/* Variables and functions */
 struct devlink_dpipe_table* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

bool FUNC3(struct devlink *devlink,
					 const char *table_name)
{
	struct devlink_dpipe_table *table;
	bool enabled;

	FUNC1();
	table = FUNC0(&devlink->dpipe_table_list,
					 table_name);
	enabled = false;
	if (table)
		enabled = table->counters_enabled;
	FUNC2();
	return enabled;
}