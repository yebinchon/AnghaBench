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
struct snd_dice {int global_enabled; int /*<<< orphan*/  domain; } ;
struct reg_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDTP_IN_STREAM ; 
 int /*<<< orphan*/  AMDTP_OUT_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct snd_dice*,struct reg_params*,struct reg_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_dice*,int /*<<< orphan*/ ,struct reg_params*) ; 

void FUNC3(struct snd_dice *dice)
{
	struct reg_params tx_params, rx_params;

	/*
	 * On a bus reset, the DICE firmware disables streaming and then goes
	 * off contemplating its own navel for hundreds of milliseconds before
	 * it can react to any of our attempts to reenable streaming.  This
	 * means that we lose synchronization anyway, so we force our streams
	 * to stop so that the application can restart them in an orderly
	 * manner.
	 */
	dice->global_enabled = false;

	if (FUNC1(dice, &tx_params, &rx_params) == 0) {
		FUNC0(&dice->domain);

		FUNC2(dice, AMDTP_IN_STREAM, &tx_params);
		FUNC2(dice, AMDTP_OUT_STREAM, &rx_params);
	}
}