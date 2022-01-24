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
struct snd_pcm_hw_params {int dummy; } ;
struct fsl_sai {int slots; int slot_width; int bclk_ratio; int mclk_streams; size_t* mclk_id; int /*<<< orphan*/  regmap; scalar_t__* synchronous; int /*<<< orphan*/  is_slave_mode; scalar_t__ is_lsb_first; int /*<<< orphan*/  is_dsp_mode; int /*<<< orphan*/ * mclk_clk; TYPE_1__* soc_data; } ;
struct TYPE_2__ {unsigned int reg_offset; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 int FSL_SAI_CR4_FRSZ_MASK ; 
 int FUNC2 (int) ; 
 int FSL_SAI_CR4_SYWD_MASK ; 
 int FUNC3 (int) ; 
 int FSL_SAI_CR5_FBT_MASK ; 
 int FUNC4 (int) ; 
 int FSL_SAI_CR5_W0W_MASK ; 
 int FUNC5 (int) ; 
 int FSL_SAI_CR5_WNW_MASK ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FSL_SAI_RMR ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FSL_SAI_TMR ; 
 int /*<<< orphan*/  FUNC10 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 size_t RX ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 size_t TX ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct snd_soc_dai*,int,int) ; 
 unsigned int FUNC15 (struct snd_pcm_hw_params*) ; 
 int FUNC16 (struct snd_pcm_hw_params*) ; 
 int FUNC17 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 struct fsl_sai* FUNC20 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC21(struct snd_pcm_substream *substream,
		struct snd_pcm_hw_params *params,
		struct snd_soc_dai *cpu_dai)
{
	struct fsl_sai *sai = FUNC20(cpu_dai);
	unsigned int ofs = sai->soc_data->reg_offset;
	bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
	unsigned int channels = FUNC15(params);
	u32 word_width = FUNC17(params);
	u32 val_cr4 = 0, val_cr5 = 0;
	u32 slots = (channels == 1) ? 2 : channels;
	u32 slot_width = word_width;
	int ret;

	if (sai->slots)
		slots = sai->slots;

	if (sai->slot_width)
		slot_width = sai->slot_width;

	if (!sai->is_slave_mode) {
		if (sai->bclk_ratio)
			ret = FUNC14(cpu_dai, tx,
					       sai->bclk_ratio *
					       FUNC16(params));
		else
			ret = FUNC14(cpu_dai, tx,
					       slots * slot_width *
					       FUNC16(params));
		if (ret)
			return ret;

		/* Do not enable the clock if it is already enabled */
		if (!(sai->mclk_streams & FUNC0(substream->stream))) {
			ret = FUNC13(sai->mclk_clk[sai->mclk_id[tx]]);
			if (ret)
				return ret;

			sai->mclk_streams |= FUNC0(substream->stream);
		}
	}

	if (!sai->is_dsp_mode)
		val_cr4 |= FUNC2(slot_width);

	val_cr5 |= FUNC5(slot_width);
	val_cr5 |= FUNC4(slot_width);

	if (sai->is_lsb_first)
		val_cr5 |= FUNC3(0);
	else
		val_cr5 |= FUNC3(word_width - 1);

	val_cr4 |= FUNC1(slots);

	/*
	 * For SAI master mode, when Tx(Rx) sync with Rx(Tx) clock, Rx(Tx) will
	 * generate bclk and frame clock for Tx(Rx), we should set RCR4(TCR4),
	 * RCR5(TCR5) and RMR(TMR) for playback(capture), or there will be sync
	 * error.
	 */

	if (!sai->is_slave_mode) {
		if (!sai->synchronous[TX] && sai->synchronous[RX] && !tx) {
			FUNC18(sai->regmap, FUNC8(ofs),
				FSL_SAI_CR4_SYWD_MASK | FSL_SAI_CR4_FRSZ_MASK,
				val_cr4);
			FUNC18(sai->regmap, FUNC9(ofs),
				FSL_SAI_CR5_WNW_MASK | FSL_SAI_CR5_W0W_MASK |
				FSL_SAI_CR5_FBT_MASK, val_cr5);
			FUNC19(sai->regmap, FSL_SAI_TMR,
				~0UL - ((1 << channels) - 1));
		} else if (!sai->synchronous[RX] && sai->synchronous[TX] && tx) {
			FUNC18(sai->regmap, FUNC6(ofs),
				FSL_SAI_CR4_SYWD_MASK | FSL_SAI_CR4_FRSZ_MASK,
				val_cr4);
			FUNC18(sai->regmap, FUNC7(ofs),
				FSL_SAI_CR5_WNW_MASK | FSL_SAI_CR5_W0W_MASK |
				FSL_SAI_CR5_FBT_MASK, val_cr5);
			FUNC19(sai->regmap, FSL_SAI_RMR,
				~0UL - ((1 << channels) - 1));
		}
	}

	FUNC18(sai->regmap, FUNC10(tx, ofs),
			   FSL_SAI_CR4_SYWD_MASK | FSL_SAI_CR4_FRSZ_MASK,
			   val_cr4);
	FUNC18(sai->regmap, FUNC11(tx, ofs),
			   FSL_SAI_CR5_WNW_MASK | FSL_SAI_CR5_W0W_MASK |
			   FSL_SAI_CR5_FBT_MASK, val_cr5);
	FUNC19(sai->regmap, FUNC12(tx), ~0UL - ((1 << channels) - 1));

	return 0;
}