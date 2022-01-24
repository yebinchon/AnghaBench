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
struct ad193x_priv {int sysclk; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD193X_ADC_CTRL1 ; 
 int /*<<< orphan*/  AD193X_ADC_WORD_LEN_MASK ; 
 int /*<<< orphan*/  AD193X_DAC_CTRL2 ; 
 int /*<<< orphan*/  AD193X_DAC_WORD_LEN_MASK ; 
 int AD193X_DAC_WORD_LEN_SHFT ; 
 int /*<<< orphan*/  AD193X_PLL_CLK_CTRL0 ; 
 int AD193X_PLL_INPUT_256 ; 
 int AD193X_PLL_INPUT_384 ; 
 int AD193X_PLL_INPUT_512 ; 
 int AD193X_PLL_INPUT_768 ; 
 int /*<<< orphan*/  AD193X_PLL_INPUT_MASK ; 
 scalar_t__ FUNC0 (struct ad193x_priv*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ad193x_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
		struct snd_pcm_hw_params *params,
		struct snd_soc_dai *dai)
{
	int word_len = 0, master_rate = 0;
	struct snd_soc_component *component = dai->component;
	struct ad193x_priv *ad193x = FUNC3(component);

	/* bit size */
	switch (FUNC1(params)) {
	case 16:
		word_len = 3;
		break;
	case 20:
		word_len = 1;
		break;
	case 24:
	case 32:
		word_len = 0;
		break;
	}

	switch (ad193x->sysclk) {
	case 12288000:
		master_rate = AD193X_PLL_INPUT_256;
		break;
	case 18432000:
		master_rate = AD193X_PLL_INPUT_384;
		break;
	case 24576000:
		master_rate = AD193X_PLL_INPUT_512;
		break;
	case 36864000:
		master_rate = AD193X_PLL_INPUT_768;
		break;
	}

	FUNC2(ad193x->regmap, AD193X_PLL_CLK_CTRL0,
			    AD193X_PLL_INPUT_MASK, master_rate);

	FUNC2(ad193x->regmap, AD193X_DAC_CTRL2,
			    AD193X_DAC_WORD_LEN_MASK,
			    word_len << AD193X_DAC_WORD_LEN_SHFT);

	if (FUNC0(ad193x))
		FUNC2(ad193x->regmap, AD193X_ADC_CTRL1,
				   AD193X_ADC_WORD_LEN_MASK, word_len);

	return 0;
}