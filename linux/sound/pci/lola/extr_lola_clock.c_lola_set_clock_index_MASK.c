#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * idx_lookup; int /*<<< orphan*/  nid; } ;
struct lola {TYPE_2__* card; TYPE_1__ clock; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LOLA_VERB_SET_CLOCK_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC1 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ *) ; 

int FUNC2(struct lola *chip, unsigned int idx)
{
	unsigned int res;
	int err;

	err = FUNC1(chip, chip->clock.nid,
			      LOLA_VERB_SET_CLOCK_SELECT,
			      chip->clock.idx_lookup[idx],
			      0, &res, NULL);
	if (err < 0)
		return err;
	if (res) {
		FUNC0(chip->card->dev, "error in set_clock %d\n", res);
		return -EINVAL;
	}
	return 0;
}