#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct max98926_priv {int ch_size; int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {int rate; int sr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int MAX98926_DAI_BSEL_32 ; 
 int MAX98926_DAI_BSEL_48 ; 
 int MAX98926_DAI_BSEL_64 ; 
 int /*<<< orphan*/  MAX98926_DAI_BSEL_MASK ; 
 int MAX98926_DAI_CHANSZ_16 ; 
 int MAX98926_DAI_CHANSZ_24 ; 
 int MAX98926_DAI_CHANSZ_32 ; 
 int /*<<< orphan*/  MAX98926_DAI_CHANSZ_MASK ; 
 int /*<<< orphan*/  MAX98926_DAI_CLK_MODE2 ; 
 int /*<<< orphan*/  MAX98926_DAI_SR_MASK ; 
 int MAX98926_DAI_SR_SHIFT ; 
 int /*<<< orphan*/  MAX98926_FORMAT ; 
#define  SNDRV_PCM_FORMAT_S16_LE 130 
#define  SNDRV_PCM_FORMAT_S24_LE 129 
#define  SNDRV_PCM_FORMAT_S32_LE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 TYPE_1__* rate_table ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct max98926_priv* FUNC6 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
		struct snd_pcm_hw_params *params,
		struct snd_soc_dai *dai)
{
	int dai_sr = -EINVAL;
	int rate = FUNC4(params), i;
	struct snd_soc_component *component = dai->component;
	struct max98926_priv *max98926 = FUNC6(component);
	int blr_clk_ratio;

	switch (FUNC3(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		FUNC5(max98926->regmap,
			MAX98926_FORMAT,
			MAX98926_DAI_CHANSZ_MASK,
			MAX98926_DAI_CHANSZ_16);
		max98926->ch_size = 16;
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		FUNC5(max98926->regmap,
			MAX98926_FORMAT,
			MAX98926_DAI_CHANSZ_MASK,
			MAX98926_DAI_CHANSZ_24);
		max98926->ch_size = 24;
		break;
	case SNDRV_PCM_FORMAT_S32_LE:
		FUNC5(max98926->regmap,
			MAX98926_FORMAT,
			MAX98926_DAI_CHANSZ_MASK,
			MAX98926_DAI_CHANSZ_32);
		max98926->ch_size = 32;
		break;
	default:
		FUNC1(component->dev, "format unsupported %d\n",
			FUNC3(params));
		return -EINVAL;
	}

	/* BCLK/LRCLK ratio calculation */
	blr_clk_ratio = FUNC2(params) * max98926->ch_size;

	switch (blr_clk_ratio) {
	case 32:
		FUNC5(max98926->regmap,
			MAX98926_DAI_CLK_MODE2,
			MAX98926_DAI_BSEL_MASK,
			MAX98926_DAI_BSEL_32);
		break;
	case 48:
		FUNC5(max98926->regmap,
			MAX98926_DAI_CLK_MODE2,
			MAX98926_DAI_BSEL_MASK,
			MAX98926_DAI_BSEL_48);
		break;
	case 64:
		FUNC5(max98926->regmap,
			MAX98926_DAI_CLK_MODE2,
			MAX98926_DAI_BSEL_MASK,
			MAX98926_DAI_BSEL_64);
		break;
	default:
		return -EINVAL;
	}

	/* find the closest rate */
	for (i = 0; i < FUNC0(rate_table); i++) {
		if (rate_table[i].rate >= rate) {
			dai_sr = rate_table[i].sr;
			break;
		}
	}
	if (dai_sr < 0)
		return -EINVAL;

	/* set DAI_SR to correct LRCLK frequency */
	FUNC5(max98926->regmap,
		MAX98926_DAI_CLK_MODE2,
		MAX98926_DAI_SR_MASK, dai_sr << MAX98926_DAI_SR_SHIFT);
	return 0;
}