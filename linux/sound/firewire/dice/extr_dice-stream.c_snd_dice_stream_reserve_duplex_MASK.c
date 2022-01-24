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
struct snd_dice {scalar_t__ substreams_counter; int /*<<< orphan*/  domain; } ;
struct reg_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDTP_IN_STREAM ; 
 int /*<<< orphan*/  AMDTP_OUT_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_dice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_dice*,struct reg_params*,struct reg_params*) ; 
 int FUNC3 (struct snd_dice*,struct reg_params*,struct reg_params*) ; 
 int FUNC4 (struct snd_dice*,unsigned int,int /*<<< orphan*/ ,struct reg_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_dice*) ; 
 int FUNC6 (struct snd_dice*,unsigned int*) ; 

int FUNC7(struct snd_dice *dice, unsigned int rate)
{
	unsigned int curr_rate;
	int err;

	// Check sampling transmission frequency.
	err = FUNC6(dice, &curr_rate);
	if (err < 0)
		return err;
	if (rate == 0)
		rate = curr_rate;

	if (dice->substreams_counter == 0 || curr_rate != rate) {
		struct reg_params tx_params, rx_params;

		FUNC0(&dice->domain);

		err = FUNC3(dice, &tx_params, &rx_params);
		if (err < 0)
			return err;
		FUNC2(dice, &tx_params, &rx_params);

		FUNC5(dice);

		// Just after owning the unit (GLOBAL_OWNER), the unit can
		// return invalid stream formats. Selecting clock parameters
		// have an effect for the unit to refine it.
		err = FUNC1(dice, rate);
		if (err < 0)
			return err;

		// After changing sampling transfer frequency, the value of
		// register can be changed.
		err = FUNC3(dice, &tx_params, &rx_params);
		if (err < 0)
			return err;

		err = FUNC4(dice, rate, AMDTP_IN_STREAM,
					  &tx_params);
		if (err < 0)
			goto error;

		err = FUNC4(dice, rate, AMDTP_OUT_STREAM,
					  &rx_params);
		if (err < 0)
			goto error;
	}

	return 0;
error:
	FUNC5(dice);
	return err;
}