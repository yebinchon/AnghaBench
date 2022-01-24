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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs4265_private {int format; int /*<<< orphan*/  sysclk; } ;
struct TYPE_2__ {int fm_mode; int mclkdiv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS4265_ADC_CTL ; 
 int /*<<< orphan*/  CS4265_ADC_DIF ; 
 int /*<<< orphan*/  CS4265_ADC_FM ; 
 int /*<<< orphan*/  CS4265_DAC_CTL ; 
 int /*<<< orphan*/  CS4265_DAC_CTL_DIF ; 
 int /*<<< orphan*/  CS4265_MCLK_FREQ ; 
 int /*<<< orphan*/  CS4265_MCLK_FREQ_MASK ; 
 int /*<<< orphan*/  CS4265_SPDIF_CTL2 ; 
 int /*<<< orphan*/  CS4265_SPDIF_CTL2_DIF ; 
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_I2S 130 
#define  SND_SOC_DAIFMT_LEFT_J 129 
#define  SND_SOC_DAIFMT_RIGHT_J 128 
 TYPE_1__* clk_map_table ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 struct cs4265_private* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				     struct snd_pcm_hw_params *params,
				     struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct cs4265_private *cs4265 = FUNC4(component);
	int index;

	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE &&
		((cs4265->format & SND_SOC_DAIFMT_FORMAT_MASK)
		== SND_SOC_DAIFMT_RIGHT_J))
		return -EINVAL;

	index = FUNC0(cs4265->sysclk, FUNC2(params));
	if (index >= 0) {
		FUNC5(component, CS4265_ADC_CTL,
			CS4265_ADC_FM, clk_map_table[index].fm_mode << 6);
		FUNC5(component, CS4265_MCLK_FREQ,
			CS4265_MCLK_FREQ_MASK,
			clk_map_table[index].mclkdiv << 4);

	} else {
		FUNC1(component->dev, "can't get correct mclk\n");
		return -EINVAL;
	}

	switch (cs4265->format & SND_SOC_DAIFMT_FORMAT_MASK) {
	case SND_SOC_DAIFMT_I2S:
		FUNC5(component, CS4265_DAC_CTL,
			CS4265_DAC_CTL_DIF, (1 << 4));
		FUNC5(component, CS4265_ADC_CTL,
			CS4265_ADC_DIF, (1 << 4));
		FUNC5(component, CS4265_SPDIF_CTL2,
			CS4265_SPDIF_CTL2_DIF, (1 << 6));
		break;
	case SND_SOC_DAIFMT_RIGHT_J:
		if (FUNC3(params) == 16) {
			FUNC5(component, CS4265_DAC_CTL,
				CS4265_DAC_CTL_DIF, (2 << 4));
			FUNC5(component, CS4265_SPDIF_CTL2,
				CS4265_SPDIF_CTL2_DIF, (2 << 6));
		} else {
			FUNC5(component, CS4265_DAC_CTL,
				CS4265_DAC_CTL_DIF, (3 << 4));
			FUNC5(component, CS4265_SPDIF_CTL2,
				CS4265_SPDIF_CTL2_DIF, (3 << 6));
		}
		break;
	case SND_SOC_DAIFMT_LEFT_J:
		FUNC5(component, CS4265_DAC_CTL,
			CS4265_DAC_CTL_DIF, 0);
		FUNC5(component, CS4265_ADC_CTL,
			CS4265_ADC_DIF, 0);
		FUNC5(component, CS4265_SPDIF_CTL2,
			CS4265_SPDIF_CTL2_DIF, 0);

		break;
	default:
		return -EINVAL;
	}
	return 0;
}