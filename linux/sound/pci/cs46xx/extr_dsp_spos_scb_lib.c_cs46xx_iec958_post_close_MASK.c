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
struct snd_cs46xx {struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int spdif_status_out; int /*<<< orphan*/ * asynch_tx_scb; int /*<<< orphan*/ * spdif_pcm_input_scb; int /*<<< orphan*/  spdif_csuv_default; } ;

/* Variables and functions */
 int DSP_SPDIF_STATUS_OUTPUT_ENABLED ; 
 int DSP_SPDIF_STATUS_PLAYBACK_OPEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  SPDIFO_IP_OUTPUT_BUFFER1 ; 
 int /*<<< orphan*/  SP_SPDOUT_CSUV ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs46xx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_cs46xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5 (struct snd_cs46xx *chip)
{
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;

	if (FUNC4(!ins->asynch_tx_scb))
		return -EINVAL;

	ins->spdif_status_out  &= ~DSP_SPDIF_STATUS_PLAYBACK_OPEN;

	/* restore settings */
	FUNC3 (chip,SP_SPDOUT_CSUV, ins->spdif_csuv_default);
	
	/* deallocate stuff */
	if (ins->spdif_pcm_input_scb != NULL) {
		FUNC2 (chip,ins->spdif_pcm_input_scb);
		ins->spdif_pcm_input_scb = NULL;
	}

	FUNC2 (chip,ins->asynch_tx_scb);
	ins->asynch_tx_scb = NULL;

	/* clear buffer to prevent any undesired noise */
	FUNC0(chip,SPDIFO_IP_OUTPUT_BUFFER1,256);

	/* restore state */
	if ( ins->spdif_status_out & DSP_SPDIF_STATUS_OUTPUT_ENABLED ) {
		FUNC1 (chip);
	}
	
	return 0;
}