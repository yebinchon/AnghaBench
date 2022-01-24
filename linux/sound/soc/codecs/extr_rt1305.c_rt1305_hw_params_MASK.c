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
struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rt1305_priv {int lrck; int bclk; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int EINVAL ; 
#define  RT1305_AIF1 128 
 int /*<<< orphan*/  RT1305_CLK_2 ; 
 unsigned int RT1305_DIV_FS_SYS_MASK ; 
 int RT1305_DIV_FS_SYS_SFT ; 
 int /*<<< orphan*/  RT1305_FS_SYS_PRE_S_PLL1 ; 
 unsigned int RT1305_I2S_DL_SEL_16B ; 
 unsigned int RT1305_I2S_DL_SEL_20B ; 
 unsigned int RT1305_I2S_DL_SEL_24B ; 
 unsigned int RT1305_I2S_DL_SEL_8B ; 
 unsigned int RT1305_I2S_DL_SEL_MASK ; 
 int /*<<< orphan*/  RT1305_I2S_SET_2 ; 
 int /*<<< orphan*/  RT1305_PLL1_S_BCLK ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct rt1305_priv* FUNC6 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct rt1305_priv *rt1305 = FUNC6(component);
	unsigned int val_len = 0, val_clk, mask_clk;
	int pre_div, bclk_ms, frame_size;

	rt1305->lrck = FUNC3(params);
	pre_div = FUNC5(rt1305->sysclk, rt1305->lrck);
	if (pre_div < 0) {
		FUNC2(component->dev, "Force using PLL ");
		FUNC8(dai, 0, RT1305_PLL1_S_BCLK,
			rt1305->lrck * 64, rt1305->lrck * 256);
		FUNC9(dai, RT1305_FS_SYS_PRE_S_PLL1,
			rt1305->lrck * 256, SND_SOC_CLOCK_IN);
		pre_div = 0;
	}
	frame_size = FUNC10(params);
	if (frame_size < 0) {
		FUNC1(component->dev, "Unsupported frame size: %d\n",
			frame_size);
		return -EINVAL;
	}

	bclk_ms = frame_size > 32;
	rt1305->bclk = rt1305->lrck * (32 << bclk_ms);

	FUNC0(component->dev, "bclk_ms is %d and pre_div is %d for iis %d\n",
				bclk_ms, pre_div, dai->id);

	FUNC0(component->dev, "lrck is %dHz and pre_div is %d for iis %d\n",
				rt1305->lrck, pre_div, dai->id);

	switch (FUNC4(params)) {
	case 16:
		val_len |= RT1305_I2S_DL_SEL_16B;
		break;
	case 20:
		val_len |= RT1305_I2S_DL_SEL_20B;
		break;
	case 24:
		val_len |= RT1305_I2S_DL_SEL_24B;
		break;
	case 8:
		val_len |= RT1305_I2S_DL_SEL_8B;
		break;
	default:
		return -EINVAL;
	}

	switch (dai->id) {
	case RT1305_AIF1:
		mask_clk = RT1305_DIV_FS_SYS_MASK;
		val_clk = pre_div << RT1305_DIV_FS_SYS_SFT;
		FUNC7(component, RT1305_I2S_SET_2,
			RT1305_I2S_DL_SEL_MASK,
			val_len);
		break;
	default:
		FUNC1(component->dev, "Invalid dai->id: %d\n", dai->id);
		return -EINVAL;
	}

	FUNC7(component, RT1305_CLK_2,
		mask_clk, val_clk);

	return 0;
}