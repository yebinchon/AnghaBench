#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int src_mask; int /*<<< orphan*/  nid; TYPE_2__* array; } ;
struct lola {TYPE_3__ mixer; TYPE_1__* card; } ;
struct TYPE_5__ {int /*<<< orphan*/  src_gain_enable; int /*<<< orphan*/ * src_gain; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LOLA_VERB_SET_SOURCE_GAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned short,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct lola*) ; 
 int FUNC2 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned short FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned short,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct lola *chip, unsigned int id,
				   unsigned short gain, bool on)
{
	unsigned int oldval, val;

	if (!(chip->mixer.src_mask & (1 << id)))
		return -EINVAL;
	oldval = val = FUNC3(&chip->mixer.array->src_gain_enable);
	if (on)
		val |= (1 << id);
	else
		val &= ~(1 << id);
	/* test if values unchanged */
	if ((val == oldval) &&
	    (gain == FUNC4(&chip->mixer.array->src_gain[id])))
		return 0;

	FUNC0(chip->card->dev,
		"lola_mixer_set_src_gain (id=%d, gain=%d) enable=%x\n",
			id, gain, val);
	FUNC6(gain, &chip->mixer.array->src_gain[id]);
	FUNC5(val, &chip->mixer.array->src_gain_enable);
	FUNC1(chip);
	/* inform micro-controller about the new source gain */
	return FUNC2(chip, chip->mixer.nid,
				LOLA_VERB_SET_SOURCE_GAIN, id, 0);
}