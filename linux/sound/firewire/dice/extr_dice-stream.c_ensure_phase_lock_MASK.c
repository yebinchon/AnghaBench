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
typedef  int u32 ;
struct snd_dice {int /*<<< orphan*/  clock_accepted; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  nominal ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int CLOCK_RATE_MASK ; 
 int CLOCK_RATE_SHIFT ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GLOBAL_CLOCK_SELECT ; 
 int /*<<< orphan*/  GLOBAL_STATUS ; 
 int /*<<< orphan*/  NOTIFICATION_TIMEOUT_MS ; 
 int STATUS_SOURCE_LOCKED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int* snd_dice_rates ; 
 int FUNC6 (struct snd_dice*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct snd_dice*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snd_dice *dice, unsigned int rate)
{
	__be32 reg, nominal;
	u32 data;
	int i;
	int err;

	err = FUNC6(dice, GLOBAL_CLOCK_SELECT,
					       &reg, sizeof(reg));
	if (err < 0)
		return err;

	data = FUNC1(reg);

	data &= ~CLOCK_RATE_MASK;
	for (i = 0; i < FUNC0(snd_dice_rates); ++i) {
		if (snd_dice_rates[i] == rate)
			break;
	}
	if (i == FUNC0(snd_dice_rates))
		return -EINVAL;
	data |= i << CLOCK_RATE_SHIFT;

	if (FUNC2(&dice->clock_accepted))
		FUNC5(&dice->clock_accepted);

	reg = FUNC3(data);
	err = FUNC7(dice, GLOBAL_CLOCK_SELECT,
						&reg, sizeof(reg));
	if (err < 0)
		return err;

	if (FUNC8(&dice->clock_accepted,
			FUNC4(NOTIFICATION_TIMEOUT_MS)) == 0) {
		/*
		 * Old versions of Dice firmware transfer no notification when
		 * the same clock status as current one is set. In this case,
		 * just check current clock status.
		 */
		err = FUNC6(dice, GLOBAL_STATUS,
						&nominal, sizeof(nominal));
		if (err < 0)
			return err;
		if (!(FUNC1(nominal) & STATUS_SOURCE_LOCKED))
			return -ETIMEDOUT;
	}

	return 0;
}