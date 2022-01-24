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
struct TYPE_2__ {int /*<<< orphan*/  cur_index; } ;
struct lola {int /*<<< orphan*/  input_src_mask; TYPE_1__ clock; int /*<<< orphan*/  granularity; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPT ; 
 int /*<<< orphan*/  PLAY ; 
 int /*<<< orphan*/  FUNC0 (struct lola*) ; 
 int /*<<< orphan*/  FUNC1 (struct lola*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lola*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lola*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lola*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct lola *chip)
{
	/* update the granularity */
	FUNC2(chip, chip->granularity, true);
	/* update the sample clock */
	FUNC1(chip, chip->clock.cur_index);
	/* enable unsolicited events of the clock widget */
	FUNC0(chip);
	/* update the analog gains */
	FUNC4(chip, CAPT, false); /* input, update */
	/* update SRC configuration if applicable */
	FUNC3(chip, chip->input_src_mask, false);
	/* update the analog outputs */
	FUNC4(chip, PLAY, false); /* output, update */
}