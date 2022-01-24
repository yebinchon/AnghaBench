#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct nau8540 {int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {unsigned int clk_src; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int NAU8540_ADC_OSR_MASK ; 
 int /*<<< orphan*/  NAU8540_CLK_ADC_SRC_MASK ; 
 unsigned int NAU8540_CLK_ADC_SRC_SFT ; 
 unsigned int NAU8540_I2S_DL_16 ; 
 unsigned int NAU8540_I2S_DL_20 ; 
 unsigned int NAU8540_I2S_DL_24 ; 
 unsigned int NAU8540_I2S_DL_32 ; 
 int /*<<< orphan*/  NAU8540_I2S_DL_MASK ; 
 int /*<<< orphan*/  NAU8540_REG_ADC_SAMPLE_RATE ; 
 int /*<<< orphan*/  NAU8540_REG_CLOCK_SRC ; 
 int /*<<< orphan*/  NAU8540_REG_PCM_CTRL0 ; 
 scalar_t__ FUNC0 (struct nau8540*,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* osr_adc_sel ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct nau8540* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct nau8540 *nau8540 = FUNC5(component);
	unsigned int val_len = 0, osr;

	/* CLK_ADC = OSR * FS
	 * ADC clock frequency is defined as Over Sampling Rate (OSR)
	 * multiplied by the audio sample rate (Fs). Note that the OSR and Fs
	 * values must be selected such that the maximum frequency is less
	 * than 6.144 MHz.
	 */
	FUNC3(nau8540->regmap, NAU8540_REG_ADC_SAMPLE_RATE, &osr);
	osr &= NAU8540_ADC_OSR_MASK;
	if (FUNC0(nau8540, FUNC1(params), osr))
		return -EINVAL;
	FUNC4(nau8540->regmap, NAU8540_REG_CLOCK_SRC,
		NAU8540_CLK_ADC_SRC_MASK,
		osr_adc_sel[osr].clk_src << NAU8540_CLK_ADC_SRC_SFT);

	switch (FUNC2(params)) {
	case 16:
		val_len |= NAU8540_I2S_DL_16;
		break;
	case 20:
		val_len |= NAU8540_I2S_DL_20;
		break;
	case 24:
		val_len |= NAU8540_I2S_DL_24;
		break;
	case 32:
		val_len |= NAU8540_I2S_DL_32;
		break;
	default:
		return -EINVAL;
	}

	FUNC4(nau8540->regmap, NAU8540_REG_PCM_CTRL0,
		NAU8540_I2S_DL_MASK, val_len);

	return 0;
}