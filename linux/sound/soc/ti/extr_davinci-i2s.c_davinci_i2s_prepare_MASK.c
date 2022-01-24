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
typedef  int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct davinci_mcbsp_dev {int pcr; } ;

/* Variables and functions */
 int DAVINCI_MCBSP_PCR_CLKRM ; 
 int DAVINCI_MCBSP_PCR_CLKXM ; 
 int DAVINCI_MCBSP_PCR_FSRM ; 
 int DAVINCI_MCBSP_PCR_FSXM ; 
 int DAVINCI_MCBSP_SPCR_GRST ; 
 int /*<<< orphan*/  DAVINCI_MCBSP_SPCR_REG ; 
 int DAVINCI_MCBSP_SPCR_RRST ; 
 int DAVINCI_MCBSP_SPCR_XRST ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (struct davinci_mcbsp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct davinci_mcbsp_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_mcbsp_dev*,int /*<<< orphan*/ ,int) ; 
 struct davinci_mcbsp_dev* FUNC3 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC4 (struct davinci_mcbsp_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
		struct snd_soc_dai *dai)
{
	struct davinci_mcbsp_dev *dev = FUNC3(dai);
	int playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
	u32 spcr;
	u32 mask = playback ? DAVINCI_MCBSP_SPCR_XRST : DAVINCI_MCBSP_SPCR_RRST;

	FUNC1(dev, playback);

	spcr = FUNC0(dev, DAVINCI_MCBSP_SPCR_REG);
	if (spcr & mask) {
		/* start off disabled */
		FUNC2(dev, DAVINCI_MCBSP_SPCR_REG,
					spcr & ~mask);
		FUNC4(dev, playback);
	}
	if (dev->pcr & (DAVINCI_MCBSP_PCR_FSXM | DAVINCI_MCBSP_PCR_FSRM |
			DAVINCI_MCBSP_PCR_CLKXM | DAVINCI_MCBSP_PCR_CLKRM)) {
		/* Start the sample generator */
		spcr |= DAVINCI_MCBSP_SPCR_GRST;
		FUNC2(dev, DAVINCI_MCBSP_SPCR_REG, spcr);
	}

	if (playback) {
		/* Enable the transmitter */
		spcr = FUNC0(dev, DAVINCI_MCBSP_SPCR_REG);
		spcr |= DAVINCI_MCBSP_SPCR_XRST;
		FUNC2(dev, DAVINCI_MCBSP_SPCR_REG, spcr);

		/* wait for any unexpected frame sync error to occur */
		FUNC5(100);

		/* Disable the transmitter to clear any outstanding XSYNCERR */
		spcr = FUNC0(dev, DAVINCI_MCBSP_SPCR_REG);
		spcr &= ~DAVINCI_MCBSP_SPCR_XRST;
		FUNC2(dev, DAVINCI_MCBSP_SPCR_REG, spcr);
		FUNC4(dev, playback);
	}

	return 0;
}