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
struct zx_spdif_info {int /*<<< orphan*/  dai_clk; scalar_t__ reg_base; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dmaengine_dai_dma_data {int addr_width; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_FORMAT_S16_LE 131 
#define  SNDRV_PCM_FORMAT_S18_3LE 130 
#define  SNDRV_PCM_FORMAT_S20_3LE 129 
#define  SNDRV_PCM_FORMAT_S24_LE 128 
 scalar_t__ ZX_CTRL ; 
 int ZX_CTRL_DOUBLE_TRACK ; 
 int ZX_CTRL_LEFT_TRACK ; 
 int ZX_CTRL_MODA_16 ; 
 int ZX_CTRL_MODA_18 ; 
 int ZX_CTRL_MODA_20 ; 
 int ZX_CTRL_MODA_24 ; 
 int ZX_CTRL_MODA_MASK ; 
 int ZX_SPDIF_CLK_RAT ; 
 scalar_t__ ZX_VALID_BIT ; 
 int ZX_VALID_DOUBLE_TRACK ; 
 int ZX_VALID_RIGHT_TRACK ; 
 int ZX_VALID_TRACK_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct zx_spdif_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 int FUNC6 (struct snd_pcm_hw_params*) ; 
 int FUNC7 (scalar_t__) ; 
 struct snd_dmaengine_dai_dma_data* FUNC8 (struct snd_soc_dai*,struct snd_pcm_substream*) ; 
 struct zx_spdif_info* FUNC9 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 int FUNC11 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC12(struct snd_pcm_substream *substream,
			      struct snd_pcm_hw_params *params,
			      struct snd_soc_dai *socdai)
{
	struct zx_spdif_info *zx_spdif = FUNC2(socdai->dev);
	struct zx_spdif_info *spdif = FUNC9(socdai);
	struct snd_dmaengine_dai_dma_data *dma_data =
		FUNC8(socdai, substream);
	u32 val, ch_num, rate;
	int ret;

	dma_data->addr_width = FUNC6(params) >> 3;

	val = FUNC7(zx_spdif->reg_base + ZX_CTRL);
	val &= ~ZX_CTRL_MODA_MASK;
	switch (FUNC4(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		val |= ZX_CTRL_MODA_16;
		break;

	case SNDRV_PCM_FORMAT_S18_3LE:
		val |= ZX_CTRL_MODA_18;
		break;

	case SNDRV_PCM_FORMAT_S20_3LE:
		val |= ZX_CTRL_MODA_20;
		break;

	case SNDRV_PCM_FORMAT_S24_LE:
		val |= ZX_CTRL_MODA_24;
		break;
	default:
		FUNC1(socdai->dev, "Format not support!\n");
		return -EINVAL;
	}

	ch_num = FUNC3(params);
	if (ch_num == 2)
		val |= ZX_CTRL_DOUBLE_TRACK;
	else
		val |= ZX_CTRL_LEFT_TRACK;
	FUNC10(val, zx_spdif->reg_base + ZX_CTRL);

	val = FUNC7(zx_spdif->reg_base + ZX_VALID_BIT);
	val &= ~ZX_VALID_TRACK_MASK;
	if (ch_num == 2)
		val |= ZX_VALID_DOUBLE_TRACK;
	else
		val |= ZX_VALID_RIGHT_TRACK;
	FUNC10(val, zx_spdif->reg_base + ZX_VALID_BIT);

	rate = FUNC5(params);
	ret = FUNC11(zx_spdif->reg_base, rate);
	if (ret)
		return ret;
	return FUNC0(spdif->dai_clk, rate * ch_num * ZX_SPDIF_CLK_RAT);
}