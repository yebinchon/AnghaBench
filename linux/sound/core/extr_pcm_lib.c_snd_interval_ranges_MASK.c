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
struct snd_interval {scalar_t__ min; scalar_t__ max; int openmin; int openmax; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct snd_interval*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_interval*,struct snd_interval const*) ; 
 scalar_t__ FUNC2 (struct snd_interval*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_interval*) ; 
 int FUNC4 (struct snd_interval*,struct snd_interval*) ; 

int FUNC5(struct snd_interval *i, unsigned int count,
			const struct snd_interval *ranges, unsigned int mask)
{
	unsigned int k;
	struct snd_interval range_union;
	struct snd_interval range;

	if (!count) {
		FUNC3(i);
		return -EINVAL;
	}
	FUNC0(&range_union);
	range_union.min = UINT_MAX;
	range_union.max = 0;
	for (k = 0; k < count; k++) {
		if (mask && !(mask & (1 << k)))
			continue;
		FUNC1(&range, &ranges[k]);
		if (FUNC4(&range, i) < 0)
			continue;
		if (FUNC2(&range))
			continue;

		if (range.min < range_union.min) {
			range_union.min = range.min;
			range_union.openmin = 1;
		}
		if (range.min == range_union.min && !range.openmin)
			range_union.openmin = 0;
		if (range.max > range_union.max) {
			range_union.max = range.max;
			range_union.openmax = 1;
		}
		if (range.max == range_union.max && !range.openmax)
			range_union.openmax = 0;
	}
	return FUNC4(i, &range_union);
}