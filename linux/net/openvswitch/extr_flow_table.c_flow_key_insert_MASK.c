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
struct table_instance {scalar_t__ n_buckets; int /*<<< orphan*/  rcu; } ;
struct TYPE_3__ {int /*<<< orphan*/  hash; } ;
struct sw_flow {TYPE_2__* mask; int /*<<< orphan*/  key; TYPE_1__ flow_table; } ;
struct flow_table {scalar_t__ count; scalar_t__ last_rehash; int /*<<< orphan*/  ti; } ;
struct TYPE_4__ {int /*<<< orphan*/  range; } ;

/* Variables and functions */
 scalar_t__ REHASH_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  flow_tbl_destroy_rcu_cb ; 
 scalar_t__ jiffies ; 
 struct table_instance* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct table_instance*) ; 
 struct table_instance* FUNC4 (struct table_instance*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct table_instance*,struct sw_flow*) ; 
 struct table_instance* FUNC6 (struct table_instance*,scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct flow_table *table, struct sw_flow *flow)
{
	struct table_instance *new_ti = NULL;
	struct table_instance *ti;

	flow->flow_table.hash = FUNC1(&flow->key, &flow->mask->range);
	ti = FUNC2(table->ti);
	FUNC5(ti, flow);
	table->count++;

	/* Expand table, if necessary, to make room. */
	if (table->count > ti->n_buckets)
		new_ti = FUNC4(ti, false);
	else if (FUNC7(jiffies, table->last_rehash + REHASH_INTERVAL))
		new_ti = FUNC6(ti, ti->n_buckets, false);

	if (new_ti) {
		FUNC3(table->ti, new_ti);
		FUNC0(&ti->rcu, flow_tbl_destroy_rcu_cb);
		table->last_rehash = jiffies;
	}
}