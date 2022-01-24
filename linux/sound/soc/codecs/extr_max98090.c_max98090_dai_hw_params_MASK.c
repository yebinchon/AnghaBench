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
struct max98090_priv {int bclk; int lrclk; int /*<<< orphan*/  pclk; int /*<<< orphan*/  dmic_freq; scalar_t__ master; struct max98090_cdata* dai; } ;
struct max98090_cdata {int rate; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M98090_DHF_MASK ; 
 int /*<<< orphan*/  M98090_MODE_MASK ; 
 int /*<<< orphan*/  M98090_REG_FILTER_CONFIG ; 
 int /*<<< orphan*/  M98090_REG_INTERFACE_FORMAT ; 
 int /*<<< orphan*/  M98090_WS_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct max98090_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 struct max98090_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				   struct snd_pcm_hw_params *params,
				   struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct max98090_priv *max98090 = FUNC5(component);
	struct max98090_cdata *cdata;

	cdata = &max98090->dai[0];
	max98090->bclk = FUNC7(params);
	if (FUNC2(params) == 1)
		max98090->bclk *= 2;

	max98090->lrclk = FUNC3(params);

	switch (FUNC4(params)) {
	case 16:
		FUNC6(component, M98090_REG_INTERFACE_FORMAT,
			M98090_WS_MASK, 0);
		break;
	default:
		return -EINVAL;
	}

	if (max98090->master)
		FUNC0(component);

	cdata->rate = max98090->lrclk;

	/* Update filter mode */
	if (max98090->lrclk < 24000)
		FUNC6(component, M98090_REG_FILTER_CONFIG,
			M98090_MODE_MASK, 0);
	else
		FUNC6(component, M98090_REG_FILTER_CONFIG,
			M98090_MODE_MASK, M98090_MODE_MASK);

	/* Update sample rate mode */
	if (max98090->lrclk < 50000)
		FUNC6(component, M98090_REG_FILTER_CONFIG,
			M98090_DHF_MASK, 0);
	else
		FUNC6(component, M98090_REG_FILTER_CONFIG,
			M98090_DHF_MASK, M98090_DHF_MASK);

	FUNC1(max98090, max98090->dmic_freq, max98090->pclk,
				max98090->lrclk);

	return 0;
}