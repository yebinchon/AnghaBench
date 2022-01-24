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
struct table_instance {scalar_t__ n_buckets; int /*<<< orphan*/  rcu; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash; } ;
struct sw_flow {int /*<<< orphan*/  id; TYPE_1__ ufid_table; } ;
struct flow_table {scalar_t__ ufid_count; int /*<<< orphan*/  ufid_ti; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flow_tbl_destroy_rcu_cb ; 
 struct table_instance* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct table_instance*) ; 
 struct table_instance* FUNC3 (struct table_instance*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct table_instance*,struct sw_flow*) ; 

__attribute__((used)) static void FUNC6(struct flow_table *table, struct sw_flow *flow)
{
	struct table_instance *ti;

	flow->ufid_table.hash = FUNC4(&flow->id);
	ti = FUNC1(table->ufid_ti);
	FUNC5(ti, flow);
	table->ufid_count++;

	/* Expand table, if necessary, to make room. */
	if (table->ufid_count > ti->n_buckets) {
		struct table_instance *new_ti;

		new_ti = FUNC3(ti, true);
		if (new_ti) {
			FUNC2(table->ufid_ti, new_ti);
			FUNC0(&ti->rcu, flow_tbl_destroy_rcu_cb);
		}
	}
}