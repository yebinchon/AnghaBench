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
struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct pcm3168a_priv {unsigned int sysclk; int /*<<< orphan*/  regmap; struct pcm3168a_io_params* io_params; } ;
struct pcm3168a_io_params {int master_mode; unsigned int fmt; int slot_width; int tdm_slots; } ;

/* Variables and functions */
 int EINVAL ; 
 int PCM3168A_ADC_FMTAD_MASK ; 
 int PCM3168A_ADC_FMTAD_SHIFT ; 
 int PCM3168A_ADC_MSAD_MASK ; 
 int PCM3168A_ADC_MSAD_SHIFT ; 
 int PCM3168A_ADC_MST_FMT ; 
 int PCM3168A_DAC_FMT_MASK ; 
 int PCM3168A_DAC_FMT_SHIFT ; 
 int PCM3168A_DAC_MSDA_MASK ; 
 int PCM3168A_DAC_MSDA_SHIFT ; 
 int PCM3168A_DAC_PWR_MST_FMT ; 
 size_t PCM3168A_DAI_DAC ; 
#define  PCM3168A_FMT_DSP_A 131 
#define  PCM3168A_FMT_DSP_B 130 
 unsigned int PCM3168A_FMT_DSP_MASK ; 
#define  PCM3168A_FMT_I2S 129 
 unsigned int PCM3168A_FMT_I2S_TDM ; 
#define  PCM3168A_FMT_LEFT_J 128 
 unsigned int PCM3168A_FMT_LEFT_J_TDM ; 
 unsigned int PCM3168A_FMT_RIGHT_J ; 
 unsigned int PCM3168A_FMT_RIGHT_J_16 ; 
 unsigned int PCM3168A_NUM_SCKI_RATIOS_ADC ; 
 unsigned int PCM3168A_NUM_SCKI_RATIOS_DAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int FUNC1 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 unsigned int* pcm3168a_scki_ratios ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,unsigned int) ; 
 struct pcm3168a_priv* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *params,
			     struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct pcm3168a_priv *pcm3168a = FUNC5(component);
	struct pcm3168a_io_params *io_params = &pcm3168a->io_params[dai->id];
	bool master_mode;
	u32 val, mask, shift, reg;
	unsigned int rate, fmt, ratio, max_ratio;
	unsigned int tdm_slots;
	int i, slot_width;

	rate = FUNC2(params);

	ratio = pcm3168a->sysclk / rate;

	if (dai->id == PCM3168A_DAI_DAC) {
		max_ratio = PCM3168A_NUM_SCKI_RATIOS_DAC;
		reg = PCM3168A_DAC_PWR_MST_FMT;
		mask = PCM3168A_DAC_MSDA_MASK;
		shift = PCM3168A_DAC_MSDA_SHIFT;
	} else {
		max_ratio = PCM3168A_NUM_SCKI_RATIOS_ADC;
		reg = PCM3168A_ADC_MST_FMT;
		mask = PCM3168A_ADC_MSAD_MASK;
		shift = PCM3168A_ADC_MSAD_SHIFT;
	}

	master_mode = io_params->master_mode;
	fmt = io_params->fmt;

	for (i = 0; i < max_ratio; i++) {
		if (pcm3168a_scki_ratios[i] == ratio)
			break;
	}

	if (i == max_ratio) {
		FUNC0(component->dev, "unsupported sysclk ratio\n");
		return -EINVAL;
	}

	if (io_params->slot_width)
		slot_width = io_params->slot_width;
	else
		slot_width = FUNC3(params);

	switch (slot_width) {
	case 16:
		if (master_mode || (fmt != PCM3168A_FMT_RIGHT_J)) {
			FUNC0(component->dev, "16-bit slots are supported only for slave mode using right justified\n");
			return -EINVAL;
		}
		fmt = PCM3168A_FMT_RIGHT_J_16;
		break;
	case 24:
		if (master_mode || (fmt & PCM3168A_FMT_DSP_MASK)) {
			FUNC0(component->dev, "24-bit slots not supported in master mode, or slave mode using DSP\n");
			return -EINVAL;
		}
		break;
	case 32:
		break;
	default:
		FUNC0(component->dev, "unsupported frame size: %d\n", slot_width);
		return -EINVAL;
	}

	if (io_params->tdm_slots)
		tdm_slots = io_params->tdm_slots;
	else
		tdm_slots = FUNC1(params);

	/*
	 * Switch the codec to TDM mode when more than 2 TDM slots are needed
	 * for the stream.
	 * If pcm3168a->tdm_slots is not set or set to more than 2 (8/6 usually)
	 * then DIN1/DOUT1 is used in TDM mode.
	 * If pcm3168a->tdm_slots is set to 2 then DIN1/2/3/4 and DOUT1/2/3 is
	 * used in normal mode, no need to switch to TDM modes.
	 */
	if (tdm_slots > 2) {
		switch (fmt) {
		case PCM3168A_FMT_I2S:
		case PCM3168A_FMT_DSP_A:
			fmt = PCM3168A_FMT_I2S_TDM;
			break;
		case PCM3168A_FMT_LEFT_J:
		case PCM3168A_FMT_DSP_B:
			fmt = PCM3168A_FMT_LEFT_J_TDM;
			break;
		default:
			FUNC0(component->dev,
				"TDM is supported under DSP/I2S/Left_J only\n");
			return -EINVAL;
		}
	}

	if (master_mode)
		val = ((i + 1) << shift);
	else
		val = 0;

	FUNC4(pcm3168a->regmap, reg, mask, val);

	if (dai->id == PCM3168A_DAI_DAC) {
		mask = PCM3168A_DAC_FMT_MASK;
		shift = PCM3168A_DAC_FMT_SHIFT;
	} else {
		mask = PCM3168A_ADC_FMTAD_MASK;
		shift = PCM3168A_ADC_FMTAD_SHIFT;
	}

	FUNC4(pcm3168a->regmap, reg, mask, fmt << shift);

	return 0;
}