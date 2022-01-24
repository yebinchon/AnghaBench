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
struct zx_tdm_info {int /*<<< orphan*/  dai_wclk; scalar_t__ master; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dmaengine_dai_dma_data {unsigned int addr_width; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  REG_TIMING_CTRL ; 
 int /*<<< orphan*/  REG_TS_MASK0 ; 
#define  SNDRV_PCM_FORMAT_A_LAW 130 
#define  SNDRV_PCM_FORMAT_MU_LAW 129 
#define  SNDRV_PCM_FORMAT_S16_LE 128 
 unsigned int TIMING_DEFAULT_WIDTH ; 
 unsigned long FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned int) ; 
 unsigned int TIMING_WIDTH_FACTOR ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC5 (struct snd_pcm_hw_params*) ; 
 struct snd_dmaengine_dai_dma_data* FUNC6 (struct snd_soc_dai*,struct snd_pcm_substream*) ; 
 struct zx_tdm_info* FUNC7 (struct snd_soc_dai*) ; 
 unsigned long FUNC8 (struct zx_tdm_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct zx_tdm_info*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *socdai)
{
	struct zx_tdm_info *tdm = FUNC7(socdai);
	struct snd_dmaengine_dai_dma_data *dma_data;
	unsigned int ts_width = TIMING_DEFAULT_WIDTH;
	unsigned int ch_num = 32;
	unsigned int mask = 0;
	unsigned int ret = 0;
	unsigned long val;

	dma_data = FUNC6(socdai, substream);
	dma_data->addr_width = ch_num >> 3;

	switch (FUNC4(params)) {
	case SNDRV_PCM_FORMAT_MU_LAW:
	case SNDRV_PCM_FORMAT_A_LAW:
	case SNDRV_PCM_FORMAT_S16_LE:
		ts_width = 1;
		break;
	default:
		FUNC3(socdai->dev, "Unknown data format\n");
		return -EINVAL;
	}

	val = FUNC8(tdm, REG_TIMING_CTRL);
	val |= FUNC1(ts_width) | FUNC0(1);
	FUNC9(tdm, REG_TIMING_CTRL, val);
	FUNC9(tdm, REG_TS_MASK0, mask);

	if (tdm->master)
		ret = FUNC2(tdm->dai_wclk,
			FUNC5(params) * TIMING_WIDTH_FACTOR * ch_num);

	return ret;
}