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
struct snd_cs46xx {int /*<<< orphan*/  spos_mutex; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int pcm_input; int /*<<< orphan*/  ref_snoop_scb; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCMSERIALIN_PCM_SCB_ADDR ; 
 int FUNC0 (struct snd_cs46xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4 (struct snd_cs46xx *chip)
{
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;

	if (FUNC3(ins->pcm_input))
		return -EINVAL;
	if (FUNC3(!ins->ref_snoop_scb))
		return -EINVAL;

	FUNC1(&chip->spos_mutex);
	ins->pcm_input = FUNC0(chip,ins->ref_snoop_scb,PCMSERIALIN_PCM_SCB_ADDR,
                                                  "PCMSerialInput_Wave");
	FUNC2(&chip->spos_mutex);

	return 0;
}