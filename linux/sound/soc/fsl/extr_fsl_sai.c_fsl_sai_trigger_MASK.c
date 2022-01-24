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
typedef  int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct fsl_sai {int /*<<< orphan*/  regmap; int /*<<< orphan*/  is_slave_mode; scalar_t__* synchronous; TYPE_1__* soc_data; } ;
struct TYPE_2__ {unsigned int reg_offset; } ;

/* Variables and functions */
 int EINVAL ; 
 int FSL_SAI_CR2_SYNC ; 
 int FSL_SAI_CSR_FR ; 
 int FSL_SAI_CSR_FRDE ; 
 int /*<<< orphan*/  FSL_SAI_CSR_SR ; 
 int FSL_SAI_CSR_TERE ; 
 int FSL_SAI_CSR_xIE_MASK ; 
 int FSL_SAI_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int) ; 
 size_t RX ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 size_t TX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fsl_sai* FUNC8 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream, int cmd,
		struct snd_soc_dai *cpu_dai)
{
	struct fsl_sai *sai = FUNC8(cpu_dai);
	unsigned int ofs = sai->soc_data->reg_offset;

	bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
	u32 xcsr, count = 100;

	/*
	 * Asynchronous mode: Clear SYNC for both Tx and Rx.
	 * Rx sync with Tx clocks: Clear SYNC for Tx, set it for Rx.
	 * Tx sync with Rx clocks: Clear SYNC for Rx, set it for Tx.
	 */
	FUNC6(sai->regmap, FUNC2(ofs), FSL_SAI_CR2_SYNC,
			   sai->synchronous[TX] ? FSL_SAI_CR2_SYNC : 0);
	FUNC6(sai->regmap, FUNC0(ofs), FSL_SAI_CR2_SYNC,
			   sai->synchronous[RX] ? FSL_SAI_CR2_SYNC : 0);

	/*
	 * It is recommended that the transmitter is the last enabled
	 * and the first disabled.
	 */
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		FUNC6(sai->regmap, FUNC4(tx, ofs),
				   FSL_SAI_CSR_FRDE, FSL_SAI_CSR_FRDE);

		FUNC6(sai->regmap, FUNC1(ofs),
				   FSL_SAI_CSR_TERE, FSL_SAI_CSR_TERE);
		FUNC6(sai->regmap, FUNC3(ofs),
				   FSL_SAI_CSR_TERE, FSL_SAI_CSR_TERE);

		FUNC6(sai->regmap, FUNC4(tx, ofs),
				   FSL_SAI_CSR_xIE_MASK, FSL_SAI_FLAGS);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		FUNC6(sai->regmap, FUNC4(tx, ofs),
				   FSL_SAI_CSR_FRDE, 0);
		FUNC6(sai->regmap, FUNC4(tx, ofs),
				   FSL_SAI_CSR_xIE_MASK, 0);

		/* Check if the opposite FRDE is also disabled */
		FUNC5(sai->regmap, FUNC4(!tx, ofs), &xcsr);
		if (!(xcsr & FSL_SAI_CSR_FRDE)) {
			/* Disable both directions and reset their FIFOs */
			FUNC6(sai->regmap, FUNC3(ofs),
					   FSL_SAI_CSR_TERE, 0);
			FUNC6(sai->regmap, FUNC1(ofs),
					   FSL_SAI_CSR_TERE, 0);

			/* TERE will remain set till the end of current frame */
			do {
				FUNC9(10);
				FUNC5(sai->regmap,
					    FUNC4(tx, ofs), &xcsr);
			} while (--count && xcsr & FSL_SAI_CSR_TERE);

			FUNC6(sai->regmap, FUNC3(ofs),
					   FSL_SAI_CSR_FR, FSL_SAI_CSR_FR);
			FUNC6(sai->regmap, FUNC1(ofs),
					   FSL_SAI_CSR_FR, FSL_SAI_CSR_FR);

			/*
			 * For sai master mode, after several open/close sai,
			 * there will be no frame clock, and can't recover
			 * anymore. Add software reset to fix this issue.
			 * This is a hardware bug, and will be fix in the
			 * next sai version.
			 */
			if (!sai->is_slave_mode) {
				/* Software Reset for both Tx and Rx */
				FUNC7(sai->regmap, FUNC3(ofs),
					     FSL_SAI_CSR_SR);
				FUNC7(sai->regmap, FUNC1(ofs),
					     FSL_SAI_CSR_SR);
				/* Clear SR bit to finish the reset */
				FUNC7(sai->regmap, FUNC3(ofs), 0);
				FUNC7(sai->regmap, FUNC1(ofs), 0);
			}
		}
		break;
	default:
		return -EINVAL;
	}

	return 0;
}