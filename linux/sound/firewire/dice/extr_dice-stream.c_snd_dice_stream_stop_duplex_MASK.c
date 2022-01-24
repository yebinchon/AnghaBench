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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_dice*,struct reg_params*,struct reg_params*) ; 
 scalar_t__ FUNC2 (struct snd_dice*,struct reg_params*,struct reg_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_dice*) ; 

void FUNC4(struct snd_dice *dice)
{
	struct reg_params tx_params, rx_params;

	if (dice->substreams_counter == 0) {
		if (FUNC2(dice, &tx_params, &rx_params) >= 0) {
			FUNC0(&dice->domain);
			FUNC1(dice, &tx_params, &rx_params);
		}

		FUNC3(dice);
	}
}