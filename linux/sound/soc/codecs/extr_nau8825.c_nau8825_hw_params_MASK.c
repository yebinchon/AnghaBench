#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int /*<<< orphan*/  stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct nau8825 {int /*<<< orphan*/  regmap; } ;
struct TYPE_4__ {unsigned int clk_src; } ;
struct TYPE_3__ {unsigned int clk_src; } ;

/* Variables and functions */
 int EINVAL ; 
 int HZ ; 
 unsigned int NAU8825_ADC_SYNC_DOWN_MASK ; 
 int NAU8825_CLK_ADC_SRC_MASK ; 
 unsigned int NAU8825_CLK_ADC_SRC_SFT ; 
 int NAU8825_CLK_DAC_SRC_MASK ; 
 unsigned int NAU8825_CLK_DAC_SRC_SFT ; 
 unsigned int NAU8825_DAC_OVERSAMPLE_MASK ; 
 int NAU8825_I2S_BLK_DIV_MASK ; 
 unsigned int NAU8825_I2S_DL_16 ; 
 unsigned int NAU8825_I2S_DL_20 ; 
 unsigned int NAU8825_I2S_DL_24 ; 
 unsigned int NAU8825_I2S_DL_32 ; 
 int NAU8825_I2S_DL_MASK ; 
 int NAU8825_I2S_LRC_DIV_MASK ; 
 unsigned int NAU8825_I2S_LRC_DIV_SFT ; 
 unsigned int NAU8825_I2S_MS_MASTER ; 
 int /*<<< orphan*/  NAU8825_REG_ADC_RATE ; 
 int /*<<< orphan*/  NAU8825_REG_CLK_DIVIDER ; 
 int /*<<< orphan*/  NAU8825_REG_DAC_CTRL1 ; 
 int /*<<< orphan*/  NAU8825_REG_I2S_PCM_CTRL1 ; 
 int /*<<< orphan*/  NAU8825_REG_I2S_PCM_CTRL2 ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ FUNC0 (struct nau8825*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct nau8825*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nau8825*) ; 
 TYPE_2__* osr_adc_sel ; 
 TYPE_1__* osr_dac_sel ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct nau8825* FUNC7 (struct snd_soc_component*) ; 
 unsigned int FUNC8 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct nau8825 *nau8825 = FUNC7(component);
	unsigned int val_len = 0, osr, ctrl_val, bclk_fs, bclk_div;

	FUNC1(nau8825, 3 * HZ);

	/* CLK_DAC or CLK_ADC = OSR * FS
	 * DAC or ADC clock frequency is defined as Over Sampling Rate (OSR)
	 * multiplied by the audio sample rate (Fs). Note that the OSR and Fs
	 * values must be selected such that the maximum frequency is less
	 * than 6.144 MHz.
	 */
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		FUNC5(nau8825->regmap, NAU8825_REG_DAC_CTRL1, &osr);
		osr &= NAU8825_DAC_OVERSAMPLE_MASK;
		if (FUNC0(nau8825, substream->stream,
			FUNC3(params), osr)) {
			FUNC2(nau8825);
			return -EINVAL;
		}
		FUNC6(nau8825->regmap, NAU8825_REG_CLK_DIVIDER,
			NAU8825_CLK_DAC_SRC_MASK,
			osr_dac_sel[osr].clk_src << NAU8825_CLK_DAC_SRC_SFT);
	} else {
		FUNC5(nau8825->regmap, NAU8825_REG_ADC_RATE, &osr);
		osr &= NAU8825_ADC_SYNC_DOWN_MASK;
		if (FUNC0(nau8825, substream->stream,
			FUNC3(params), osr)) {
			FUNC2(nau8825);
			return -EINVAL;
		}
		FUNC6(nau8825->regmap, NAU8825_REG_CLK_DIVIDER,
			NAU8825_CLK_ADC_SRC_MASK,
			osr_adc_sel[osr].clk_src << NAU8825_CLK_ADC_SRC_SFT);
	}

	/* make BCLK and LRC divde configuration if the codec as master. */
	FUNC5(nau8825->regmap, NAU8825_REG_I2S_PCM_CTRL2, &ctrl_val);
	if (ctrl_val & NAU8825_I2S_MS_MASTER) {
		/* get the bclk and fs ratio */
		bclk_fs = FUNC8(params) / FUNC3(params);
		if (bclk_fs <= 32)
			bclk_div = 2;
		else if (bclk_fs <= 64)
			bclk_div = 1;
		else if (bclk_fs <= 128)
			bclk_div = 0;
		else {
			FUNC2(nau8825);
			return -EINVAL;
		}
		FUNC6(nau8825->regmap, NAU8825_REG_I2S_PCM_CTRL2,
			NAU8825_I2S_LRC_DIV_MASK | NAU8825_I2S_BLK_DIV_MASK,
			((bclk_div + 1) << NAU8825_I2S_LRC_DIV_SFT) | bclk_div);
	}

	switch (FUNC4(params)) {
	case 16:
		val_len |= NAU8825_I2S_DL_16;
		break;
	case 20:
		val_len |= NAU8825_I2S_DL_20;
		break;
	case 24:
		val_len |= NAU8825_I2S_DL_24;
		break;
	case 32:
		val_len |= NAU8825_I2S_DL_32;
		break;
	default:
		FUNC2(nau8825);
		return -EINVAL;
	}

	FUNC6(nau8825->regmap, NAU8825_REG_I2S_PCM_CTRL1,
		NAU8825_I2S_DL_MASK, val_len);

	/* Release the semaphore. */
	FUNC2(nau8825);

	return 0;
}