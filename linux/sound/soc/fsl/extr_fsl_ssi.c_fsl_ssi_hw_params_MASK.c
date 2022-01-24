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
typedef  int u8 ;
typedef  int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct regmap {int dummy; } ;
struct fsl_ssi {int baudclk_streams; int i2s_net; scalar_t__ synchronous; scalar_t__ streams; int /*<<< orphan*/  baudclk; struct regmap* regs; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  REG_SSI_SCR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int SSI_SCR_I2S_MODE_NORMAL ; 
 int /*<<< orphan*/  SSI_SCR_I2S_NET_MASK ; 
 int SSI_SCR_NET ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  SSI_SxCCR_WL_MASK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_ssi*) ; 
 scalar_t__ FUNC5 (struct fsl_ssi*) ; 
 scalar_t__ FUNC6 (struct fsl_ssi*) ; 
 int FUNC7 (struct snd_pcm_substream*,struct snd_soc_dai*,struct snd_pcm_hw_params*) ; 
 unsigned int FUNC8 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC9 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC10 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct fsl_ssi* FUNC11 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC12(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *hw_params,
			     struct snd_soc_dai *dai)
{
	bool tx2, tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
	struct fsl_ssi *ssi = FUNC11(dai);
	struct regmap *regs = ssi->regs;
	unsigned int channels = FUNC8(hw_params);
	unsigned int sample_size = FUNC9(hw_params);
	u32 wl = FUNC2(sample_size);
	int ret;

	if (FUNC6(ssi)) {
		ret = FUNC7(substream, dai, hw_params);
		if (ret)
			return ret;

		/* Do not enable the clock if it is already enabled */
		if (!(ssi->baudclk_streams & FUNC0(substream->stream))) {
			ret = FUNC3(ssi->baudclk);
			if (ret)
				return ret;

			ssi->baudclk_streams |= FUNC0(substream->stream);
		}
	}

	/*
	 * SSI is properly configured if it is enabled and running in
	 * the synchronous mode; Note that AC97 mode is an exception
	 * that should set separate configurations for STCCR and SRCCR
	 * despite running in the synchronous mode.
	 */
	if (ssi->streams && ssi->synchronous)
		return 0;

	if (!FUNC4(ssi)) {
		/*
		 * Keep the ssi->i2s_net intact while having a local variable
		 * to override settings for special use cases. Otherwise, the
		 * ssi->i2s_net will lose the settings for regular use cases.
		 */
		u8 i2s_net = ssi->i2s_net;

		/* Normal + Network mode to send 16-bit data in 32-bit frames */
		if (FUNC5(ssi) && sample_size == 16)
			i2s_net = SSI_SCR_I2S_MODE_NORMAL | SSI_SCR_NET;

		/* Use Normal mode to send mono data at 1st slot of 2 slots */
		if (channels == 1)
			i2s_net = SSI_SCR_I2S_MODE_NORMAL;

		FUNC10(regs, REG_SSI_SCR,
				   SSI_SCR_I2S_NET_MASK, i2s_net);
	}

	/* In synchronous mode, the SSI uses STCCR for capture */
	tx2 = tx || ssi->synchronous;
	FUNC10(regs, FUNC1(tx2), SSI_SxCCR_WL_MASK, wl);

	return 0;
}