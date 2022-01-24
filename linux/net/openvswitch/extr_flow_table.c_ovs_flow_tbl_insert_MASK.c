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
struct sw_flow_mask {int dummy; } ;
struct sw_flow {int /*<<< orphan*/  id; } ;
struct flow_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flow_table*,struct sw_flow*) ; 
 int FUNC1 (struct flow_table*,struct sw_flow*,struct sw_flow_mask const*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_table*,struct sw_flow*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct flow_table *table, struct sw_flow *flow,
			const struct sw_flow_mask *mask)
{
	int err;

	err = FUNC1(table, flow, mask);
	if (err)
		return err;
	FUNC0(table, flow);
	if (FUNC3(&flow->id))
		FUNC2(table, flow);

	return 0;
}