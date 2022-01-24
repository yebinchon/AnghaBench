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
typedef  int /*<<< orphan*/  u32 ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; TYPE_1__* card; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSL_SAI_CLK_MAST1 ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int SND_SOC_CLOCK_IN ; 
 int SND_SOC_CLOCK_OUT ; 
 unsigned int SND_SOC_DAIFMT_CBM_CFM ; 
 unsigned int SND_SOC_DAIFMT_CBS_CFS ; 
 unsigned int SND_SOC_DAIFMT_DSP_A ; 
 unsigned int SND_SOC_DAIFMT_NB_NF ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				   struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct device *dev = rtd->card->dev;
	bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
	unsigned int fmt = SND_SOC_DAIFMT_DSP_A | SND_SOC_DAIFMT_NB_NF;
	u32 channels = FUNC2(params);
	int ret, dir;

	/* For playback the AUDMIX is slave, and for record is master */
	fmt |= tx ? SND_SOC_DAIFMT_CBS_CFS : SND_SOC_DAIFMT_CBM_CFM;
	dir  = tx ? SND_SOC_CLOCK_OUT : SND_SOC_CLOCK_IN;

	/* set DAI configuration */
	ret = FUNC3(rtd->cpu_dai, fmt);
	if (ret) {
		FUNC1(dev, "failed to set cpu dai fmt: %d\n", ret);
		return ret;
	}

	ret = FUNC4(rtd->cpu_dai, FSL_SAI_CLK_MAST1, 0, dir);
	if (ret) {
		FUNC1(dev, "failed to set cpu sysclk: %d\n", ret);
		return ret;
	}

	/*
	 * Per datasheet, AUDMIX expects 8 slots and 32 bits
	 * for every slot in TDM mode.
	 */
	ret = FUNC5(rtd->cpu_dai, FUNC0(channels) - 1,
				       FUNC0(channels) - 1, 8, 32);
	if (ret)
		FUNC1(dev, "failed to set cpu dai tdm slot: %d\n", ret);

	return ret;
}