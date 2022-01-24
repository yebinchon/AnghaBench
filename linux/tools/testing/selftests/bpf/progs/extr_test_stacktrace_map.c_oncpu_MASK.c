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
struct sched_switch_args {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;
typedef  int __u32 ;

/* Variables and functions */
 int PERF_MAX_STACK_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (struct sched_switch_args*,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sched_switch_args*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  control_map ; 
 int /*<<< orphan*/  stack_amap ; 
 int /*<<< orphan*/  stackid_hmap ; 
 int /*<<< orphan*/  stackmap ; 

int FUNC4(struct sched_switch_args *ctx)
{
	__u32 max_len = PERF_MAX_STACK_DEPTH * sizeof(__u64);
	__u32 key = 0, val = 0, *value_p;
	void *stack_p;

	value_p = FUNC2(&control_map, &key);
	if (value_p && *value_p)
		return 0; /* skip if non-zero *value_p */

	/* The size of stackmap and stackid_hmap should be the same */
	key = FUNC1(ctx, &stackmap, 0);
	if ((int)key >= 0) {
		FUNC3(&stackid_hmap, &key, &val, 0);
		stack_p = FUNC2(&stack_amap, &key);
		if (stack_p)
			FUNC0(ctx, stack_p, max_len, 0);
	}

	return 0;
}