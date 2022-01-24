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
struct dim_stats {int dummy; } ;
struct dim {int tune_state; int profile_ix; struct dim_stats prev_stats; int /*<<< orphan*/  tired; } ;

/* Variables and functions */
#define  DIM_GOING_LEFT 133 
#define  DIM_GOING_RIGHT 132 
#define  DIM_ON_EDGE 131 
#define  DIM_PARKING_ON_TOP 130 
#define  DIM_PARKING_TIRED 129 
 int DIM_STATS_BETTER ; 
 int DIM_STATS_SAME ; 
#define  DIM_TOO_TIRED 128 
 int /*<<< orphan*/  FUNC0 (struct dim*) ; 
 int /*<<< orphan*/  FUNC1 (struct dim*) ; 
 int /*<<< orphan*/  FUNC2 (struct dim*) ; 
 int /*<<< orphan*/  FUNC3 (struct dim*) ; 
 int /*<<< orphan*/  FUNC4 (struct dim*) ; 
 int FUNC5 (struct dim_stats*,struct dim_stats*) ; 
 int FUNC6 (struct dim*) ; 

__attribute__((used)) static bool FUNC7(struct dim_stats *curr_stats, struct dim *dim)
{
	int prev_state = dim->tune_state;
	int prev_ix = dim->profile_ix;
	int stats_res;
	int step_res;

	switch (dim->tune_state) {
	case DIM_PARKING_ON_TOP:
		stats_res = FUNC5(curr_stats,
						  &dim->prev_stats);
		if (stats_res != DIM_STATS_SAME)
			FUNC4(dim);
		break;

	case DIM_PARKING_TIRED:
		dim->tired--;
		if (!dim->tired)
			FUNC4(dim);
		break;

	case DIM_GOING_RIGHT:
	case DIM_GOING_LEFT:
		stats_res = FUNC5(curr_stats,
						  &dim->prev_stats);
		if (stats_res != DIM_STATS_BETTER)
			FUNC3(dim);

		if (FUNC0(dim)) {
			FUNC1(dim);
			break;
		}

		step_res = FUNC6(dim);
		switch (step_res) {
		case DIM_ON_EDGE:
			FUNC1(dim);
			break;
		case DIM_TOO_TIRED:
			FUNC2(dim);
			break;
		}

		break;
	}

	if (prev_state != DIM_PARKING_ON_TOP ||
	    dim->tune_state != DIM_PARKING_ON_TOP)
		dim->prev_stats = *curr_stats;

	return dim->profile_ix != prev_ix;
}