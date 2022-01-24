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
struct snd_cs46xx {int /*<<< orphan*/  (* amplifier_ctrl ) (struct snd_cs46xx*,int) ;int /*<<< orphan*/  (* active_ctrl ) (struct snd_cs46xx*,int) ;int /*<<< orphan*/  spos_mutex; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {scalar_t__ spdif_status_in; int /*<<< orphan*/  spdif_in_src; int /*<<< orphan*/ * asynch_rx_scb; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_cs46xx*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_cs46xx*,int) ; 

int FUNC7 (struct snd_cs46xx *chip)
{
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;

	if (FUNC4(!ins->asynch_rx_scb))
		return -EINVAL;
	if (FUNC4(!ins->spdif_in_src))
		return -EINVAL;

	FUNC2(&chip->spos_mutex);

	/* Remove the asynchronous receiver SCB */
	FUNC0 (chip,ins->asynch_rx_scb);
	ins->asynch_rx_scb = NULL;

	FUNC1(chip,ins->spdif_in_src);

	/* monitor state */
	ins->spdif_status_in = 0;
	FUNC3(&chip->spos_mutex);

	/* restore amplifier */
	chip->active_ctrl(chip, -1);
	chip->amplifier_ctrl(chip, -1);

	return 0;
}