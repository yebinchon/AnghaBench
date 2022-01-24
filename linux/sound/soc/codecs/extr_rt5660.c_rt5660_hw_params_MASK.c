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
struct rt5660_priv {int* lrck; int* bclk; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RT5660_ADDA_CLK1 ; 
#define  RT5660_AIF1 128 
 int /*<<< orphan*/  RT5660_I2S1_SDP ; 
 unsigned int RT5660_I2S_BCLK_MS1_MASK ; 
 int RT5660_I2S_BCLK_MS1_SFT ; 
 unsigned int RT5660_I2S_DL_20 ; 
 unsigned int RT5660_I2S_DL_24 ; 
 unsigned int RT5660_I2S_DL_8 ; 
 unsigned int RT5660_I2S_DL_MASK ; 
 unsigned int RT5660_I2S_PD1_MASK ; 
 int RT5660_I2S_PD1_SFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct rt5660_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC7 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct rt5660_priv *rt5660 = FUNC5(component);
	unsigned int val_len = 0, val_clk, mask_clk;
	int pre_div, bclk_ms, frame_size;

	rt5660->lrck[dai->id] = FUNC2(params);
	pre_div = FUNC4(rt5660->sysclk, rt5660->lrck[dai->id]);
	if (pre_div < 0) {
		FUNC1(component->dev, "Unsupported clock setting %d for DAI %d\n",
			rt5660->lrck[dai->id], dai->id);
		return -EINVAL;
	}

	frame_size = FUNC7(params);
	if (frame_size < 0) {
		FUNC1(component->dev, "Unsupported frame size: %d\n", frame_size);
		return frame_size;
	}

	if (frame_size > 32)
		bclk_ms = 1;
	else
		bclk_ms = 0;

	rt5660->bclk[dai->id] = rt5660->lrck[dai->id] * (32 << bclk_ms);

	FUNC0(dai->dev, "bclk is %dHz and lrck is %dHz\n",
		rt5660->bclk[dai->id], rt5660->lrck[dai->id]);
	FUNC0(dai->dev, "bclk_ms is %d and pre_div is %d for iis %d\n",
				bclk_ms, pre_div, dai->id);

	switch (FUNC3(params)) {
	case 16:
		break;
	case 20:
		val_len |= RT5660_I2S_DL_20;
		break;
	case 24:
		val_len |= RT5660_I2S_DL_24;
		break;
	case 8:
		val_len |= RT5660_I2S_DL_8;
		break;
	default:
		return -EINVAL;
	}

	switch (dai->id) {
	case RT5660_AIF1:
		mask_clk = RT5660_I2S_BCLK_MS1_MASK | RT5660_I2S_PD1_MASK;
		val_clk = bclk_ms << RT5660_I2S_BCLK_MS1_SFT |
			pre_div << RT5660_I2S_PD1_SFT;
		FUNC6(component, RT5660_I2S1_SDP, RT5660_I2S_DL_MASK,
			val_len);
		FUNC6(component, RT5660_ADDA_CLK1, mask_clk, val_clk);
		break;

	default:
		FUNC1(component->dev, "Invalid dai->id: %d\n", dai->id);
		return -EINVAL;
	}

	return 0;
}