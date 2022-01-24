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
struct nf_flowtable {int /*<<< orphan*/  rhashtable; int /*<<< orphan*/  gc_work; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  flowtable_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_flow_offload_gc_step ; 
 int /*<<< orphan*/  nf_flow_table_do_cleanup ; 
 int /*<<< orphan*/  FUNC4 (struct nf_flowtable*,int /*<<< orphan*/ ,struct nf_flowtable*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct nf_flowtable *flow_table)
{
	FUNC2(&flowtable_lock);
	FUNC1(&flow_table->list);
	FUNC3(&flowtable_lock);
	FUNC0(&flow_table->gc_work);
	FUNC4(flow_table, nf_flow_table_do_cleanup, NULL);
	FUNC4(flow_table, nf_flow_offload_gc_step, flow_table);
	FUNC5(&flow_table->rhashtable);
}