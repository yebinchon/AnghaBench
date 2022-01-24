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
struct snd_soc_dai {int /*<<< orphan*/  component; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct jz_icdc {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  JZ4725B_CODEC_REG_CCR2 ; 
 int /*<<< orphan*/  JZ4725B_CODEC_REG_CR2 ; 
 int /*<<< orphan*/  REG_CCR2_AFREQ_MASK ; 
 unsigned int REG_CCR2_AFREQ_OFFSET ; 
 int /*<<< orphan*/  REG_CCR2_DFREQ_MASK ; 
 unsigned int REG_CCR2_DFREQ_OFFSET ; 
 int /*<<< orphan*/  REG_CR2_ADC_ADWL_MASK ; 
 unsigned int REG_CR2_ADC_ADWL_OFFSET ; 
 int /*<<< orphan*/  REG_CR2_DAC_ADWL_MASK ; 
 unsigned int REG_CR2_DAC_ADWL_OFFSET ; 
#define  SNDRV_PCM_FORMAT_S16_LE 131 
#define  SNDRV_PCM_FORMAT_S18_3LE 130 
#define  SNDRV_PCM_FORMAT_S20_3LE 129 
#define  SNDRV_PCM_FORMAT_S24_3LE 128 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__* jz4725b_codec_sample_rates ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct jz_icdc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct jz_icdc *icdc = FUNC4(dai->component);
	unsigned int rate, bit_width;

	switch (FUNC1(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		bit_width = 0;
		break;
	case SNDRV_PCM_FORMAT_S18_3LE:
		bit_width = 1;
		break;
	case SNDRV_PCM_FORMAT_S20_3LE:
		bit_width = 2;
		break;
	case SNDRV_PCM_FORMAT_S24_3LE:
		bit_width = 3;
		break;
	default:
		return -EINVAL;
	}

	for (rate = 0; rate < FUNC0(jz4725b_codec_sample_rates); rate++) {
		if (jz4725b_codec_sample_rates[rate] == FUNC2(params))
			break;
	}

	if (rate == FUNC0(jz4725b_codec_sample_rates))
		return -EINVAL;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		FUNC3(icdc->regmap,
				   JZ4725B_CODEC_REG_CR2,
				   REG_CR2_DAC_ADWL_MASK,
				   bit_width << REG_CR2_DAC_ADWL_OFFSET);

		FUNC3(icdc->regmap,
				   JZ4725B_CODEC_REG_CCR2,
				   REG_CCR2_DFREQ_MASK,
				   rate << REG_CCR2_DFREQ_OFFSET);
	} else {
		FUNC3(icdc->regmap,
				   JZ4725B_CODEC_REG_CR2,
				   REG_CR2_ADC_ADWL_MASK,
				   bit_width << REG_CR2_ADC_ADWL_OFFSET);

		FUNC3(icdc->regmap,
				   JZ4725B_CODEC_REG_CCR2,
				   REG_CCR2_AFREQ_MASK,
				   rate << REG_CCR2_AFREQ_OFFSET);
	}

	return 0;
}