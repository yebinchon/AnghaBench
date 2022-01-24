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
struct snd_soc_dai {size_t id; int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rt5616_priv {int* lrck; int* bclk; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RT5616_ADDA_CLK1 ; 
 int /*<<< orphan*/  RT5616_I2S1_SDP ; 
 unsigned int RT5616_I2S_DL_20 ; 
 unsigned int RT5616_I2S_DL_24 ; 
 unsigned int RT5616_I2S_DL_8 ; 
 unsigned int RT5616_I2S_DL_MASK ; 
 unsigned int RT5616_I2S_PD1_MASK ; 
 int RT5616_I2S_PD1_SFT ; 
#define  SNDRV_PCM_FORMAT_S16_LE 131 
#define  SNDRV_PCM_FORMAT_S20_3LE 130 
#define  SNDRV_PCM_FORMAT_S24_LE 129 
#define  SNDRV_PCM_FORMAT_S8 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct rt5616_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC7 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct rt5616_priv *rt5616 = FUNC5(component);
	unsigned int val_len = 0, val_clk, mask_clk;
	int pre_div, bclk_ms, frame_size;

	rt5616->lrck[dai->id] = FUNC3(params);

	pre_div = FUNC4(rt5616->sysclk, rt5616->lrck[dai->id]);

	if (pre_div < 0) {
		FUNC1(component->dev, "Unsupported clock setting\n");
		return -EINVAL;
	}
	frame_size = FUNC7(params);
	if (frame_size < 0) {
		FUNC1(component->dev, "Unsupported frame size: %d\n", frame_size);
		return -EINVAL;
	}
	bclk_ms = frame_size > 32 ? 1 : 0;
	rt5616->bclk[dai->id] = rt5616->lrck[dai->id] * (32 << bclk_ms);

	FUNC0(dai->dev, "bclk is %dHz and lrck is %dHz\n",
		rt5616->bclk[dai->id], rt5616->lrck[dai->id]);
	FUNC0(dai->dev, "bclk_ms is %d and pre_div is %d for iis %d\n",
		bclk_ms, pre_div, dai->id);

	switch (FUNC2(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		break;
	case SNDRV_PCM_FORMAT_S20_3LE:
		val_len |= RT5616_I2S_DL_20;
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		val_len |= RT5616_I2S_DL_24;
		break;
	case SNDRV_PCM_FORMAT_S8:
		val_len |= RT5616_I2S_DL_8;
		break;
	default:
		return -EINVAL;
	}

	mask_clk = RT5616_I2S_PD1_MASK;
	val_clk = pre_div << RT5616_I2S_PD1_SFT;
	FUNC6(component, RT5616_I2S1_SDP,
			    RT5616_I2S_DL_MASK, val_len);
	FUNC6(component, RT5616_ADDA_CLK1, mask_clk, val_clk);

	return 0;
}