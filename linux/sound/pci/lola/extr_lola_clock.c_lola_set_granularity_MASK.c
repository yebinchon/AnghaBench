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
struct TYPE_2__ {int /*<<< orphan*/  cur_freq; } ;
struct lola {unsigned int granularity; TYPE_1__ clock; scalar_t__ audio_out_alloc_mask; scalar_t__ audio_in_alloc_mask; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 unsigned int LOLA_GRANULARITY_STEP ; 
 int /*<<< orphan*/  LOLA_VERB_SET_GRANULARITY_STEPS ; 
 int /*<<< orphan*/  FUNC0 (struct lola*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lola*) ; 
 int FUNC2 (struct lola*,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int FUNC4(struct lola *chip, unsigned int val, bool force)
{
	int err;

	if (!force) {
		if (val == chip->granularity)
			return 0;
#if 0
		/* change Gran only if there are no streams allocated ! */
		if (chip->audio_in_alloc_mask || chip->audio_out_alloc_mask)
			return -EBUSY;
#endif
		if (!FUNC0(chip, val,
						    chip->clock.cur_freq))
			return -EINVAL;
	}

	chip->granularity = val;
	val /= LOLA_GRANULARITY_STEP;

	/* audio function group */
	err = FUNC2(chip, 1, LOLA_VERB_SET_GRANULARITY_STEPS,
			       val, 0);
	if (err < 0)
		return err;
	/* this can be a very slow function !!! */
	FUNC3(400 * val, 20000);
	return FUNC1(chip);
}