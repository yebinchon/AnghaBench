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
struct range {scalar_t__ end; scalar_t__ start; } ;
typedef  int /*<<< orphan*/  range ;

/* Variables and functions */
 int FUNC0 (struct range*,int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct range*,struct range*,int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

int FUNC4(struct range *range, int az, int nr_range,
		     u64 start, u64 end)
{
	int i;

	if (start >= end)
		return nr_range;

	/* get new start/end: */
	for (i = 0; i < nr_range; i++) {
		u64 common_start, common_end;

		if (!range[i].end)
			continue;

		common_start = FUNC1(range[i].start, start);
		common_end = FUNC3(range[i].end, end);
		if (common_start > common_end)
			continue;

		/* new start/end, will add it back at last */
		start = FUNC3(range[i].start, start);
		end = FUNC1(range[i].end, end);

		FUNC2(&range[i], &range[i + 1],
			(nr_range - (i + 1)) * sizeof(range[i]));
		range[nr_range - 1].start = 0;
		range[nr_range - 1].end   = 0;
		nr_range--;
		i--;
	}

	/* Need to add it: */
	return FUNC0(range, az, nr_range, start, end);
}