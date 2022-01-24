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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; int /*<<< orphan*/  cpu_dai; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int min; int max; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_FORMAT_S24_LE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int SND_SOC_DAIFMT_CBS_CFS ; 
 int SND_SOC_DAIFMT_I2S ; 
 int SND_SOC_DAIFMT_NB_NF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct snd_interval* FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_pcm_runtime *rtd,
		       struct snd_pcm_hw_params *params)
{
	int ret;
	struct snd_interval *rate = FUNC1(params,
			SNDRV_PCM_HW_PARAM_RATE);
	struct snd_interval *channels = FUNC1(params,
						SNDRV_PCM_HW_PARAM_CHANNELS);

	/* The DSP will convert the FE rate to 48k, stereo, 24bits */
	rate->min = rate->max = 48000;
	channels->min = channels->max = 2;

	/* set SSP2 to 24-bit */
	FUNC2(params, SNDRV_PCM_FORMAT_S24_LE);

	/*
	 * Default mode for SSP configuration is TDM 4 slot, override config
	 * with explicit setting to I2S 2ch 24-bit. The word length is set with
	 * dai_set_tdm_slot() since there is no other API exposed
	 */
	ret = FUNC3(rtd->cpu_dai,
				  SND_SOC_DAIFMT_I2S     |
				  SND_SOC_DAIFMT_NB_NF   |
				  SND_SOC_DAIFMT_CBS_CFS);
	if (ret < 0) {
		FUNC0(rtd->dev, "can't set format to I2S, err %d\n", ret);
		return ret;
	}

	ret = FUNC4(rtd->cpu_dai, 0x3, 0x3, 2, 24);
	if (ret < 0) {
		FUNC0(rtd->dev, "can't set I2S config, err %d\n", ret);
		return ret;
	}

	return 0;
}