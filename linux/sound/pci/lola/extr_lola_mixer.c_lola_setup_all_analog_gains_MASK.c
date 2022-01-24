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
struct lola_pin {unsigned int cur_gain_step; scalar_t__ is_analog; } ;
struct lola {TYPE_1__* pin; } ;
struct TYPE_2__ {int num_pins; struct lola_pin* pins; } ;

/* Variables and functions */
 int FUNC0 (struct lola*) ; 
 int /*<<< orphan*/  FUNC1 (struct lola*,int,int,unsigned int,int) ; 

int FUNC2(struct lola *chip, int dir, bool mute)
{
	struct lola_pin *pin;
	int idx, max_idx;

	pin = chip->pin[dir].pins;
	max_idx = chip->pin[dir].num_pins;
	for (idx = 0; idx < max_idx; idx++) {
		if (pin[idx].is_analog) {
			unsigned int val = mute ? 0 : pin[idx].cur_gain_step;
			/* set volume and do not save the value */
			FUNC1(chip, dir, idx, val, false);
		}
	}
	return FUNC0(chip);
}