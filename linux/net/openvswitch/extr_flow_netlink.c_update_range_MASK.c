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
struct sw_flow_key_range {size_t start; size_t end; } ;
struct sw_flow_match {TYPE_1__* mask; struct sw_flow_key_range range; } ;
struct TYPE_2__ {struct sw_flow_key_range range; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 size_t FUNC1 (size_t,int) ; 

__attribute__((used)) static void FUNC2(struct sw_flow_match *match,
			 size_t offset, size_t size, bool is_mask)
{
	struct sw_flow_key_range *range;
	size_t start = FUNC0(offset, sizeof(long));
	size_t end = FUNC1(offset + size, sizeof(long));

	if (!is_mask)
		range = &match->range;
	else
		range = &match->mask->range;

	if (range->start == range->end) {
		range->start = start;
		range->end = end;
		return;
	}

	if (range->start > start)
		range->start = start;

	if (range->end < end)
		range->end = end;
}