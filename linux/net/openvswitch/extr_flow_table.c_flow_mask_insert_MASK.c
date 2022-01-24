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
struct sw_flow_mask {int /*<<< orphan*/  ref_count; int /*<<< orphan*/  list; int /*<<< orphan*/  range; int /*<<< orphan*/  key; } ;
struct sw_flow {struct sw_flow_mask* mask; } ;
struct flow_table {int /*<<< orphan*/  mask_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 struct sw_flow_mask* FUNC1 (struct flow_table*,struct sw_flow_mask const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sw_flow_mask* FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct flow_table *tbl, struct sw_flow *flow,
			    const struct sw_flow_mask *new)
{
	struct sw_flow_mask *mask;
	mask = FUNC1(tbl, new);
	if (!mask) {
		/* Allocate a new mask if none exsits. */
		mask = FUNC3();
		if (!mask)
			return -ENOMEM;
		mask->key = new->key;
		mask->range = new->range;
		FUNC2(&mask->list, &tbl->mask_list);
	} else {
		FUNC0(!mask->ref_count);
		mask->ref_count++;
	}

	flow->mask = mask;
	return 0;
}