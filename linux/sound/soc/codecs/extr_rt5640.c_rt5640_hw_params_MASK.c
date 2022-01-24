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
struct rt5640_priv {int* lrck; int* bclk; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RT5640_ADDA_CLK1 ; 
 int /*<<< orphan*/  RT5640_I2S1_SDP ; 
 int /*<<< orphan*/  RT5640_I2S2_SDP ; 
 unsigned int RT5640_I2S_BCLK_MS1_MASK ; 
 int RT5640_I2S_BCLK_MS1_SFT ; 
 unsigned int RT5640_I2S_BCLK_MS2_MASK ; 
 int RT5640_I2S_BCLK_MS2_SFT ; 
 unsigned int RT5640_I2S_DL_20 ; 
 unsigned int RT5640_I2S_DL_24 ; 
 unsigned int RT5640_I2S_DL_8 ; 
 unsigned int RT5640_I2S_DL_MASK ; 
 unsigned int RT5640_I2S_PD1_MASK ; 
 int RT5640_I2S_PD1_SFT ; 
 unsigned int RT5640_I2S_PD2_MASK ; 
 int RT5640_I2S_PD2_SFT ; 
 int RT5640_U_IF1 ; 
 int RT5640_U_IF2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (struct snd_soc_component*,size_t) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct rt5640_priv* FUNC6 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC8 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct rt5640_priv *rt5640 = FUNC6(component);
	unsigned int val_len = 0, val_clk, mask_clk;
	int dai_sel, pre_div, bclk_ms, frame_size;

	rt5640->lrck[dai->id] = FUNC3(params);
	pre_div = FUNC5(rt5640->sysclk, rt5640->lrck[dai->id]);
	if (pre_div < 0) {
		FUNC1(component->dev, "Unsupported clock setting %d for DAI %d\n",
			rt5640->lrck[dai->id], dai->id);
		return -EINVAL;
	}
	frame_size = FUNC8(params);
	if (frame_size < 0) {
		FUNC1(component->dev, "Unsupported frame size: %d\n", frame_size);
		return frame_size;
	}
	if (frame_size > 32)
		bclk_ms = 1;
	else
		bclk_ms = 0;
	rt5640->bclk[dai->id] = rt5640->lrck[dai->id] * (32 << bclk_ms);

	FUNC0(dai->dev, "bclk is %dHz and lrck is %dHz\n",
		rt5640->bclk[dai->id], rt5640->lrck[dai->id]);
	FUNC0(dai->dev, "bclk_ms is %d and pre_div is %d for iis %d\n",
				bclk_ms, pre_div, dai->id);

	switch (FUNC4(params)) {
	case 16:
		break;
	case 20:
		val_len |= RT5640_I2S_DL_20;
		break;
	case 24:
		val_len |= RT5640_I2S_DL_24;
		break;
	case 8:
		val_len |= RT5640_I2S_DL_8;
		break;
	default:
		return -EINVAL;
	}

	dai_sel = FUNC2(component, dai->id);
	if (dai_sel < 0) {
		FUNC1(component->dev, "Failed to get sdp info: %d\n", dai_sel);
		return -EINVAL;
	}
	if (dai_sel & RT5640_U_IF1) {
		mask_clk = RT5640_I2S_BCLK_MS1_MASK | RT5640_I2S_PD1_MASK;
		val_clk = bclk_ms << RT5640_I2S_BCLK_MS1_SFT |
			pre_div << RT5640_I2S_PD1_SFT;
		FUNC7(component, RT5640_I2S1_SDP,
			RT5640_I2S_DL_MASK, val_len);
		FUNC7(component, RT5640_ADDA_CLK1, mask_clk, val_clk);
	}
	if (dai_sel & RT5640_U_IF2) {
		mask_clk = RT5640_I2S_BCLK_MS2_MASK | RT5640_I2S_PD2_MASK;
		val_clk = bclk_ms << RT5640_I2S_BCLK_MS2_SFT |
			pre_div << RT5640_I2S_PD2_SFT;
		FUNC7(component, RT5640_I2S2_SDP,
			RT5640_I2S_DL_MASK, val_len);
		FUNC7(component, RT5640_ADDA_CLK1, mask_clk, val_clk);
	}

	return 0;
}