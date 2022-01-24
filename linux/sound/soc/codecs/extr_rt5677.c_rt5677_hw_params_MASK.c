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
struct rt5677_priv {int* lrck; int* bclk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int EINVAL ; 
#define  RT5677_AIF1 131 
#define  RT5677_AIF2 130 
#define  RT5677_AIF3 129 
#define  RT5677_AIF4 128 
 int /*<<< orphan*/  RT5677_CLK_TREE_CTRL1 ; 
 int /*<<< orphan*/  RT5677_I2S1_SDP ; 
 int /*<<< orphan*/  RT5677_I2S2_SDP ; 
 int /*<<< orphan*/  RT5677_I2S3_SDP ; 
 int /*<<< orphan*/  RT5677_I2S4_SDP ; 
 unsigned int RT5677_I2S_BCLK_MS3_MASK ; 
 int RT5677_I2S_BCLK_MS3_SFT ; 
 unsigned int RT5677_I2S_BCLK_MS4_MASK ; 
 int RT5677_I2S_BCLK_MS4_SFT ; 
 unsigned int RT5677_I2S_DL_20 ; 
 unsigned int RT5677_I2S_DL_24 ; 
 unsigned int RT5677_I2S_DL_8 ; 
 unsigned int RT5677_I2S_DL_MASK ; 
 unsigned int RT5677_I2S_PD1_MASK ; 
 int RT5677_I2S_PD1_SFT ; 
 unsigned int RT5677_I2S_PD2_MASK ; 
 int RT5677_I2S_PD2_SFT ; 
 unsigned int RT5677_I2S_PD3_MASK ; 
 int RT5677_I2S_PD3_SFT ; 
 unsigned int RT5677_I2S_PD4_MASK ; 
 int RT5677_I2S_PD4_SFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct rt5677_priv* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct rt5677_priv *rt5677 = FUNC6(component);
	unsigned int val_len = 0, val_clk, mask_clk;
	int pre_div, bclk_ms, frame_size;

	rt5677->lrck[dai->id] = FUNC2(params);
	pre_div = FUNC5(rt5677->sysclk, rt5677->lrck[dai->id]);
	if (pre_div < 0) {
		FUNC1(component->dev, "Unsupported clock setting: sysclk=%dHz lrck=%dHz\n",
			rt5677->sysclk, rt5677->lrck[dai->id]);
		return -EINVAL;
	}
	frame_size = FUNC7(params);
	if (frame_size < 0) {
		FUNC1(component->dev, "Unsupported frame size: %d\n", frame_size);
		return -EINVAL;
	}
	bclk_ms = frame_size > 32;
	rt5677->bclk[dai->id] = rt5677->lrck[dai->id] * (32 << bclk_ms);

	FUNC0(dai->dev, "bclk is %dHz and lrck is %dHz\n",
		rt5677->bclk[dai->id], rt5677->lrck[dai->id]);
	FUNC0(dai->dev, "bclk_ms is %d and pre_div is %d for iis %d\n",
				bclk_ms, pre_div, dai->id);

	switch (FUNC3(params)) {
	case 16:
		break;
	case 20:
		val_len |= RT5677_I2S_DL_20;
		break;
	case 24:
		val_len |= RT5677_I2S_DL_24;
		break;
	case 8:
		val_len |= RT5677_I2S_DL_8;
		break;
	default:
		return -EINVAL;
	}

	switch (dai->id) {
	case RT5677_AIF1:
		mask_clk = RT5677_I2S_PD1_MASK;
		val_clk = pre_div << RT5677_I2S_PD1_SFT;
		FUNC4(rt5677->regmap, RT5677_I2S1_SDP,
			RT5677_I2S_DL_MASK, val_len);
		FUNC4(rt5677->regmap, RT5677_CLK_TREE_CTRL1,
			mask_clk, val_clk);
		break;
	case RT5677_AIF2:
		mask_clk = RT5677_I2S_PD2_MASK;
		val_clk = pre_div << RT5677_I2S_PD2_SFT;
		FUNC4(rt5677->regmap, RT5677_I2S2_SDP,
			RT5677_I2S_DL_MASK, val_len);
		FUNC4(rt5677->regmap, RT5677_CLK_TREE_CTRL1,
			mask_clk, val_clk);
		break;
	case RT5677_AIF3:
		mask_clk = RT5677_I2S_BCLK_MS3_MASK | RT5677_I2S_PD3_MASK;
		val_clk = bclk_ms << RT5677_I2S_BCLK_MS3_SFT |
			pre_div << RT5677_I2S_PD3_SFT;
		FUNC4(rt5677->regmap, RT5677_I2S3_SDP,
			RT5677_I2S_DL_MASK, val_len);
		FUNC4(rt5677->regmap, RT5677_CLK_TREE_CTRL1,
			mask_clk, val_clk);
		break;
	case RT5677_AIF4:
		mask_clk = RT5677_I2S_BCLK_MS4_MASK | RT5677_I2S_PD4_MASK;
		val_clk = bclk_ms << RT5677_I2S_BCLK_MS4_SFT |
			pre_div << RT5677_I2S_PD4_SFT;
		FUNC4(rt5677->regmap, RT5677_I2S4_SDP,
			RT5677_I2S_DL_MASK, val_len);
		FUNC4(rt5677->regmap, RT5677_CLK_TREE_CTRL1,
			mask_clk, val_clk);
		break;
	default:
		break;
	}

	return 0;
}