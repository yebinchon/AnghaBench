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
struct snd_interval {int empty; scalar_t__ max; int /*<<< orphan*/  min; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UINT_MAX ; 
 scalar_t__ FUNC0 (scalar_t__,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_interval*) ; 
 int FUNC3 (struct snd_interval*,struct snd_interval*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_interval*,unsigned int const) ; 

int FUNC5(struct snd_interval *i, unsigned int count,
		      const unsigned int *list, unsigned int mask)
{
        unsigned int k;
	struct snd_interval list_range;

	if (!count) {
		i->empty = 1;
		return -EINVAL;
	}
	FUNC2(&list_range);
	list_range.min = UINT_MAX;
	list_range.max = 0;
        for (k = 0; k < count; k++) {
		if (mask && !(mask & (1 << k)))
			continue;
		if (!FUNC4(i, list[k]))
			continue;
		list_range.min = FUNC1(list_range.min, list[k]);
		list_range.max = FUNC0(list_range.max, list[k]);
        }
	return FUNC3(i, &list_range);
}