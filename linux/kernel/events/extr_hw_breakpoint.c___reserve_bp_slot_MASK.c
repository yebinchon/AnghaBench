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
typedef  scalar_t__ u64 ;
struct perf_event {int dummy; } ;
struct bp_busy_slots {scalar_t__ pinned; int /*<<< orphan*/  flexible; int /*<<< orphan*/  member_0; } ;
typedef  enum bp_type_idx { ____Placeholder_bp_type_idx } bp_type_idx ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 scalar_t__ HW_BREAKPOINT_EMPTY ; 
 scalar_t__ HW_BREAKPOINT_INVALID ; 
 int /*<<< orphan*/  constraints_initialized ; 
 int /*<<< orphan*/  FUNC0 (struct bp_busy_slots*,struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bp_busy_slots*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (struct perf_event*) ; 
 scalar_t__* nr_slots ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct perf_event *bp, u64 bp_type)
{
	struct bp_busy_slots slots = {0};
	enum bp_type_idx type;
	int weight;

	/* We couldn't initialize breakpoint constraints on boot */
	if (!constraints_initialized)
		return -ENOMEM;

	/* Basic checks */
	if (bp_type == HW_BREAKPOINT_EMPTY ||
	    bp_type == HW_BREAKPOINT_INVALID)
		return -EINVAL;

	type = FUNC2(bp_type);
	weight = FUNC3(bp);

	FUNC0(&slots, bp, type);
	/*
	 * Simulate the addition of this breakpoint to the constraints
	 * and see the result.
	 */
	FUNC1(&slots, weight);

	/* Flexible counters need to keep at least one slot */
	if (slots.pinned + (!!slots.flexible) > nr_slots[type])
		return -ENOSPC;

	FUNC4(bp, true, type, weight);

	return 0;
}