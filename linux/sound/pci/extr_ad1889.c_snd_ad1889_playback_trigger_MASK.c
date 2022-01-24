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
typedef  int u16 ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int reg; } ;
struct snd_ad1889 {TYPE_1__ wave; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD_CHAN_WAV ; 
 int /*<<< orphan*/  AD_DMA_CHSS ; 
 int /*<<< orphan*/  AD_DMA_CHSS_WAVS ; 
 int AD_DMA_IM_CNT ; 
 int AD_DMA_LOOP ; 
 int /*<<< orphan*/  AD_DMA_WAV ; 
 int /*<<< orphan*/  AD_DS_WSMC ; 
 int AD_DS_WSMC_WAEN ; 
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct snd_ad1889*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ad1889*) ; 
 int FUNC2 (struct snd_ad1889*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ad1889*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ad1889*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ad1889*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct snd_ad1889* FUNC7 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int
FUNC8(struct snd_pcm_substream *ss, int cmd)
{
	u16 wsmc;
	struct snd_ad1889 *chip = FUNC7(ss);
	
	wsmc = FUNC2(chip, AD_DS_WSMC);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		/* enable DMA loop & interrupts */
		FUNC5(chip, AD_DMA_WAV, AD_DMA_LOOP | AD_DMA_IM_CNT);
		wsmc |= AD_DS_WSMC_WAEN;
		/* 1 to clear CHSS bit */
		FUNC4(chip, AD_DMA_CHSS, AD_DMA_CHSS_WAVS);
		FUNC3(chip);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC1(chip);
		wsmc &= ~AD_DS_WSMC_WAEN;
		break;
	default:
		FUNC6();
		return -EINVAL;
	}
	
	chip->wave.reg = wsmc;
	FUNC5(chip, AD_DS_WSMC, wsmc);	
	FUNC2(chip, AD_DS_WSMC);	/* flush */

	/* reset the chip when STOP - will disable IRQs */
	if (cmd == SNDRV_PCM_TRIGGER_STOP)
		FUNC0(chip, AD_CHAN_WAV);

	return 0;
}