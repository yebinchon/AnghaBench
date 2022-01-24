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
struct regmap {int dummy; } ;
struct axg_tdm_stream {unsigned int channels; unsigned long* mask; } ;

/* Variables and functions */
 int AXG_TDM_NUM_LANES ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (unsigned long*,int) ; 
 int FUNC2 (unsigned long*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,unsigned int,unsigned int) ; 

int FUNC6(struct regmap *map,
					struct axg_tdm_stream *ts,
					unsigned int offset)
{
	unsigned int val, ch = ts->channels;
	unsigned long mask;
	int i, j;

	/*
	 * Distribute the channels of the stream over the available slots
	 * of each TDM lane
	 */
	for (i = 0; i < AXG_TDM_NUM_LANES; i++) {
		val = 0;
		mask = ts->mask[i];

		for (j = FUNC1(&mask, 32);
		     (j < 32) && ch;
		     j = FUNC2(&mask, 32, j + 1)) {
			val |= 1 << j;
			ch -= 1;
		}

		FUNC5(map, offset, val);
		offset += FUNC4(map);
	}

	/*
	 * If we still have channel left at the end of the process, it means
	 * the stream has more channels than we can accommodate and we should
	 * have caught this earlier.
	 */
	if (FUNC0(ch != 0)) {
		FUNC3("channel mask error\n");
		return -EINVAL;
	}

	return 0;
}