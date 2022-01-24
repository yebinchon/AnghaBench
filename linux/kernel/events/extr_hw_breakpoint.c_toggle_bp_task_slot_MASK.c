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
struct perf_event {int dummy; } ;
typedef  enum bp_type_idx { ____Placeholder_bp_type_idx } bp_type_idx ;
struct TYPE_2__ {unsigned int* tsk_pinned; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int FUNC1 (int,struct perf_event*,int) ; 

__attribute__((used)) static void FUNC2(struct perf_event *bp, int cpu,
				enum bp_type_idx type, int weight)
{
	unsigned int *tsk_pinned = FUNC0(cpu, type)->tsk_pinned;
	int old_idx, new_idx;

	old_idx = FUNC1(cpu, bp, type) - 1;
	new_idx = old_idx + weight;

	if (old_idx >= 0)
		tsk_pinned[old_idx]--;
	if (new_idx >= 0)
		tsk_pinned[new_idx]++;
}