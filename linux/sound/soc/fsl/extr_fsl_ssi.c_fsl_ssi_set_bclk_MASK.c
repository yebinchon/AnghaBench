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
typedef  int u64 ;
typedef  int u32 ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct regmap {int dummy; } ;
struct fsl_ssi {int slots; unsigned int slot_width; int baudclk_streams; int /*<<< orphan*/  baudclk; scalar_t__ synchronous; int /*<<< orphan*/  clk; struct regmap* regs; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int SSI_SxCCR_DIV2 ; 
 int FUNC3 (int) ; 
 int SSI_SxCCR_PM_MASK ; 
 int SSI_SxCCR_PSR ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned int) ; 
 unsigned int FUNC9 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC10 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC11 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 struct fsl_ssi* FUNC12 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC13(struct snd_pcm_substream *substream,
			    struct snd_soc_dai *dai,
			    struct snd_pcm_hw_params *hw_params)
{
	bool tx2, tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
	struct fsl_ssi *ssi = FUNC12(dai);
	struct regmap *regs = ssi->regs;
	u32 pm = 999, div2, psr, stccr, mask, afreq, factor, i;
	unsigned long clkrate, baudrate, tmprate;
	unsigned int slots = FUNC9(hw_params);
	unsigned int slot_width = 32;
	u64 sub, savesub = 100000;
	unsigned int freq;
	bool baudclk_is_used;
	int ret;

	/* Override slots and slot_width if being specifically set... */
	if (ssi->slots)
		slots = ssi->slots;
	/* ...but keep 32 bits if slots is 2 -- I2S Master mode */
	if (ssi->slot_width && slots != 2)
		slot_width = ssi->slot_width;

	/* Generate bit clock based on the slot number and slot width */
	freq = slots * slot_width * FUNC10(hw_params);

	/* Don't apply it to any non-baudclk circumstance */
	if (FUNC1(ssi->baudclk))
		return -EINVAL;

	/*
	 * Hardware limitation: The bclk rate must be
	 * never greater than 1/5 IPG clock rate
	 */
	if (freq * 5 > FUNC4(ssi->clk)) {
		FUNC7(dai->dev, "bitclk > ipgclk / 5\n");
		return -EINVAL;
	}

	baudclk_is_used = ssi->baudclk_streams & ~(FUNC0(substream->stream));

	/* It should be already enough to divide clock by setting pm alone */
	psr = 0;
	div2 = 0;

	factor = (div2 + 1) * (7 * psr + 1) * 2;

	for (i = 0; i < 255; i++) {
		tmprate = freq * factor * (i + 1);

		if (baudclk_is_used)
			clkrate = FUNC4(ssi->baudclk);
		else
			clkrate = FUNC5(ssi->baudclk, tmprate);

		clkrate /= factor;
		afreq = clkrate / (i + 1);

		if (freq == afreq)
			sub = 0;
		else if (freq / afreq == 1)
			sub = freq - afreq;
		else if (afreq / freq == 1)
			sub = afreq - freq;
		else
			continue;

		/* Calculate the fraction */
		sub *= 100000;
		FUNC8(sub, freq);

		if (sub < savesub && !(i == 0 && psr == 0 && div2 == 0)) {
			baudrate = tmprate;
			savesub = sub;
			pm = i;
		}

		/* We are lucky */
		if (savesub == 0)
			break;
	}

	/* No proper pm found if it is still remaining the initial value */
	if (pm == 999) {
		FUNC7(dai->dev, "failed to handle the required sysclk\n");
		return -EINVAL;
	}

	stccr = FUNC3(pm + 1) | (div2 ? SSI_SxCCR_DIV2 : 0) |
		(psr ? SSI_SxCCR_PSR : 0);
	mask = SSI_SxCCR_PM_MASK | SSI_SxCCR_DIV2 | SSI_SxCCR_PSR;

	/* STCCR is used for RX in synchronous mode */
	tx2 = tx || ssi->synchronous;
	FUNC11(regs, FUNC2(tx2), mask, stccr);

	if (!baudclk_is_used) {
		ret = FUNC6(ssi->baudclk, baudrate);
		if (ret) {
			FUNC7(dai->dev, "failed to set baudclk rate\n");
			return -EINVAL;
		}
	}

	return 0;
}