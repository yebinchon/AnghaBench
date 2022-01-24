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
struct rt1011_priv {int lrck; int bclk; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int EINVAL ; 
#define  RT1011_AIF1 128 
 int /*<<< orphan*/  RT1011_CLK_2 ; 
 unsigned int RT1011_FS_SYS_DIV_MASK ; 
 int RT1011_FS_SYS_DIV_SFT ; 
 int /*<<< orphan*/  RT1011_FS_SYS_PRE_S_PLL1 ; 
 unsigned int RT1011_I2S_CH_RX_LEN_16B ; 
 unsigned int RT1011_I2S_CH_RX_LEN_20B ; 
 unsigned int RT1011_I2S_CH_RX_LEN_24B ; 
 unsigned int RT1011_I2S_CH_RX_LEN_32B ; 
 unsigned int RT1011_I2S_CH_RX_LEN_8B ; 
 unsigned int RT1011_I2S_CH_RX_LEN_MASK ; 
 unsigned int RT1011_I2S_CH_TX_LEN_16B ; 
 unsigned int RT1011_I2S_CH_TX_LEN_20B ; 
 unsigned int RT1011_I2S_CH_TX_LEN_24B ; 
 unsigned int RT1011_I2S_CH_TX_LEN_32B ; 
 unsigned int RT1011_I2S_CH_TX_LEN_8B ; 
 unsigned int RT1011_I2S_CH_TX_LEN_MASK ; 
 unsigned int RT1011_I2S_RX_DL_16B ; 
 unsigned int RT1011_I2S_RX_DL_20B ; 
 unsigned int RT1011_I2S_RX_DL_24B ; 
 unsigned int RT1011_I2S_RX_DL_32B ; 
 unsigned int RT1011_I2S_RX_DL_8B ; 
 unsigned int RT1011_I2S_RX_DL_MASK ; 
 unsigned int RT1011_I2S_TX_DL_16B ; 
 unsigned int RT1011_I2S_TX_DL_20B ; 
 unsigned int RT1011_I2S_TX_DL_24B ; 
 unsigned int RT1011_I2S_TX_DL_32B ; 
 unsigned int RT1011_I2S_TX_DL_8B ; 
 unsigned int RT1011_I2S_TX_DL_MASK ; 
 int /*<<< orphan*/  RT1011_PLL1_S_BCLK ; 
 int /*<<< orphan*/  RT1011_TDM1_SET_1 ; 
 int /*<<< orphan*/  RT1011_TDM_TOTAL_SET ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct rt1011_priv* FUNC6 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct rt1011_priv *rt1011 = FUNC6(component);
	unsigned int val_len = 0, ch_len = 0, val_clk, mask_clk;
	int pre_div, bclk_ms, frame_size;

	rt1011->lrck = FUNC3(params);
	pre_div = FUNC5(rt1011->sysclk, rt1011->lrck);
	if (pre_div < 0) {
		FUNC2(component->dev, "Force using PLL ");
		FUNC8(dai, 0, RT1011_PLL1_S_BCLK,
			rt1011->lrck * 64, rt1011->lrck * 256);
		FUNC9(dai, RT1011_FS_SYS_PRE_S_PLL1,
			rt1011->lrck * 256, SND_SOC_CLOCK_IN);
		pre_div = 0;
	}
	frame_size = FUNC10(params);
	if (frame_size < 0) {
		FUNC1(component->dev, "Unsupported frame size: %d\n",
			frame_size);
		return -EINVAL;
	}

	bclk_ms = frame_size > 32;
	rt1011->bclk = rt1011->lrck * (32 << bclk_ms);

	FUNC0(component->dev, "bclk_ms is %d and pre_div is %d for iis %d\n",
				bclk_ms, pre_div, dai->id);

	FUNC0(component->dev, "lrck is %dHz and pre_div is %d for iis %d\n",
				rt1011->lrck, pre_div, dai->id);

	switch (FUNC4(params)) {
	case 16:
		val_len |= RT1011_I2S_TX_DL_16B;
		val_len |= RT1011_I2S_RX_DL_16B;
		ch_len |= RT1011_I2S_CH_TX_LEN_16B;
		ch_len |= RT1011_I2S_CH_RX_LEN_16B;
		break;
	case 20:
		val_len |= RT1011_I2S_TX_DL_20B;
		val_len |= RT1011_I2S_RX_DL_20B;
		ch_len |= RT1011_I2S_CH_TX_LEN_20B;
		ch_len |= RT1011_I2S_CH_RX_LEN_20B;
		break;
	case 24:
		val_len |= RT1011_I2S_TX_DL_24B;
		val_len |= RT1011_I2S_RX_DL_24B;
		ch_len |= RT1011_I2S_CH_TX_LEN_24B;
		ch_len |= RT1011_I2S_CH_RX_LEN_24B;
		break;
	case 32:
		val_len |= RT1011_I2S_TX_DL_32B;
		val_len |= RT1011_I2S_RX_DL_32B;
		ch_len |= RT1011_I2S_CH_TX_LEN_32B;
		ch_len |= RT1011_I2S_CH_RX_LEN_32B;
		break;
	case 8:
		val_len |= RT1011_I2S_TX_DL_8B;
		val_len |= RT1011_I2S_RX_DL_8B;
		ch_len |= RT1011_I2S_CH_TX_LEN_8B;
		ch_len |= RT1011_I2S_CH_RX_LEN_8B;
		break;
	default:
		return -EINVAL;
	}

	switch (dai->id) {
	case RT1011_AIF1:
		mask_clk = RT1011_FS_SYS_DIV_MASK;
		val_clk = pre_div << RT1011_FS_SYS_DIV_SFT;
		FUNC7(component, RT1011_TDM_TOTAL_SET,
			RT1011_I2S_TX_DL_MASK | RT1011_I2S_RX_DL_MASK,
			val_len);
		FUNC7(component, RT1011_TDM1_SET_1,
			RT1011_I2S_CH_TX_LEN_MASK |
			RT1011_I2S_CH_RX_LEN_MASK,
			ch_len);
		break;
	default:
		FUNC1(component->dev, "Invalid dai->id: %d\n", dai->id);
		return -EINVAL;
	}

	FUNC7(component,
		RT1011_CLK_2, mask_clk, val_clk);

	return 0;
}