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
struct zx_i2s_info {int /*<<< orphan*/  dai_wclk; scalar_t__ master; scalar_t__ reg_base; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dmaengine_dai_dma_data {unsigned int addr_width; } ;

/* Variables and functions */
 unsigned int CLK_RAT ; 
 int EINVAL ; 
#define  SNDRV_PCM_FORMAT_S16_LE 130 
#define  SNDRV_PCM_FORMAT_S24_LE 129 
#define  SNDRV_PCM_FORMAT_S32_LE 128 
 unsigned long FUNC0 (unsigned int) ; 
 unsigned long ZX_I2S_TIMING_CHN_MASK ; 
 scalar_t__ ZX_I2S_TIMING_CTRL ; 
 unsigned long FUNC1 (unsigned int) ; 
 unsigned long ZX_I2S_TIMING_DATA_SIZE_MASK ; 
 unsigned long FUNC2 (unsigned int) ; 
 unsigned long ZX_I2S_TIMING_LANE_MASK ; 
 unsigned long FUNC3 (unsigned long) ; 
 unsigned long ZX_I2S_TIMING_TSCFG_MASK ; 
 unsigned long FUNC4 (unsigned int) ; 
 unsigned long ZX_I2S_TIMING_TS_WIDTH_MASK ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int FUNC7 (struct snd_pcm_hw_params*) ; 
 int FUNC8 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC9 (struct snd_pcm_hw_params*) ; 
 unsigned long FUNC10 (scalar_t__) ; 
 struct snd_dmaengine_dai_dma_data* FUNC11 (struct snd_soc_dai*,struct snd_pcm_substream*) ; 
 struct zx_i2s_info* FUNC12 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *socdai)
{
	struct zx_i2s_info *i2s = FUNC12(socdai);
	struct snd_dmaengine_dai_dma_data *dma_data;
	unsigned int lane, ch_num, len, ret = 0;
	unsigned int ts_width = 32;
	unsigned long val;
	unsigned long chn_cfg;

	dma_data = FUNC11(socdai, substream);
	dma_data->addr_width = ts_width >> 3;

	val = FUNC10(i2s->reg_base + ZX_I2S_TIMING_CTRL);
	val &= ~(ZX_I2S_TIMING_TS_WIDTH_MASK | ZX_I2S_TIMING_DATA_SIZE_MASK |
		ZX_I2S_TIMING_LANE_MASK | ZX_I2S_TIMING_CHN_MASK |
		ZX_I2S_TIMING_TSCFG_MASK);

	switch (FUNC8(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		len = 16;
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		len = 24;
		break;
	case SNDRV_PCM_FORMAT_S32_LE:
		len = 32;
		break;
	default:
		FUNC6(socdai->dev, "Unknown data format\n");
		return -EINVAL;
	}
	val |= FUNC4(ts_width) | FUNC1(len);

	ch_num = FUNC7(params);
	switch (ch_num) {
	case 1:
		lane = 1;
		chn_cfg = 2;
		break;
	case 2:
	case 4:
	case 6:
	case 8:
		lane = ch_num / 2;
		chn_cfg = 3;
		break;
	default:
		FUNC6(socdai->dev, "Not support channel num %d\n", ch_num);
		return -EINVAL;
	}
	val |= FUNC2(lane);
	val |= FUNC3(chn_cfg);
	val |= FUNC0(ch_num);
	FUNC13(val, i2s->reg_base + ZX_I2S_TIMING_CTRL);

	if (i2s->master)
		ret = FUNC5(i2s->dai_wclk,
				FUNC9(params) * ch_num * CLK_RAT);

	return ret;
}