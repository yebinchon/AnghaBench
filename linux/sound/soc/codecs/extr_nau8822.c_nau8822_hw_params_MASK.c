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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct nau8822 {scalar_t__ div_id; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int NAU8822_BCLKDIV_2 ; 
 unsigned int NAU8822_BCLKDIV_4 ; 
 unsigned int NAU8822_BCLKDIV_8 ; 
 int /*<<< orphan*/  NAU8822_BCLKSEL_MASK ; 
 unsigned int NAU8822_CLK_MASTER ; 
 scalar_t__ NAU8822_CLK_MCLK ; 
 int /*<<< orphan*/  NAU8822_REG_ADDITIONAL_CONTROL ; 
 int /*<<< orphan*/  NAU8822_REG_AUDIO_INTERFACE ; 
 int /*<<< orphan*/  NAU8822_REG_CLOCKING ; 
 int NAU8822_SMPLR_12K ; 
 int NAU8822_SMPLR_16K ; 
 int NAU8822_SMPLR_24K ; 
 int NAU8822_SMPLR_32K ; 
 int NAU8822_SMPLR_8K ; 
 int /*<<< orphan*/  NAU8822_SMPLR_MASK ; 
 int NAU8822_WLEN_20 ; 
 int NAU8822_WLEN_24 ; 
 int NAU8822_WLEN_32 ; 
 int /*<<< orphan*/  NAU8822_WLEN_MASK ; 
#define  SNDRV_PCM_FORMAT_S16_LE 131 
#define  SNDRV_PCM_FORMAT_S20_3LE 130 
#define  SNDRV_PCM_FORMAT_S24_LE 129 
#define  SNDRV_PCM_FORMAT_S32_LE 128 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dai*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 struct nau8822* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct nau8822 *nau8822 = FUNC3(component);
	int val_len = 0, val_rate = 0;
	unsigned int ctrl_val, bclk_fs, bclk_div;

	/* make BCLK and LRC divide configuration if the codec as master. */
	FUNC4(component, NAU8822_REG_CLOCKING, &ctrl_val);
	if (ctrl_val & NAU8822_CLK_MASTER) {
		/* get the bclk and fs ratio */
		bclk_fs = FUNC6(params) / FUNC2(params);
		if (bclk_fs <= 32)
			bclk_div = NAU8822_BCLKDIV_8;
		else if (bclk_fs <= 64)
			bclk_div = NAU8822_BCLKDIV_4;
		else if (bclk_fs <= 128)
			bclk_div = NAU8822_BCLKDIV_2;
		else
			return -EINVAL;
		FUNC5(component, NAU8822_REG_CLOCKING,
				NAU8822_BCLKSEL_MASK, bclk_div);
	}

	switch (FUNC1(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		break;
	case SNDRV_PCM_FORMAT_S20_3LE:
		val_len |= NAU8822_WLEN_20;
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		val_len |= NAU8822_WLEN_24;
		break;
	case SNDRV_PCM_FORMAT_S32_LE:
		val_len |= NAU8822_WLEN_32;
		break;
	default:
		return -EINVAL;
	}

	switch (FUNC2(params)) {
	case 8000:
		val_rate |= NAU8822_SMPLR_8K;
		break;
	case 11025:
		val_rate |= NAU8822_SMPLR_12K;
		break;
	case 16000:
		val_rate |= NAU8822_SMPLR_16K;
		break;
	case 22050:
		val_rate |= NAU8822_SMPLR_24K;
		break;
	case 32000:
		val_rate |= NAU8822_SMPLR_32K;
		break;
	case 44100:
	case 48000:
		break;
	default:
		return -EINVAL;
	}

	FUNC5(component,
		NAU8822_REG_AUDIO_INTERFACE, NAU8822_WLEN_MASK, val_len);
	FUNC5(component,
		NAU8822_REG_ADDITIONAL_CONTROL, NAU8822_SMPLR_MASK, val_rate);

	/* If the master clock is from MCLK, provide the runtime FS for driver
	 * to get the master clock prescaler configuration.
	 */
	if (nau8822->div_id == NAU8822_CLK_MCLK)
		FUNC0(dai, 0, FUNC2(params));

	return 0;
}