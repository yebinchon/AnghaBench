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
struct snd_soc_dapm_widget {int /*<<< orphan*/  shift; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct madera_priv {struct madera* madera; } ;
struct madera {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct cs47l35 {struct madera_priv core; } ;

/* Variables and functions */
 unsigned int MADERA_DSP_CLK_FREQ_LEGACY_MASK ; 
 unsigned int MADERA_DSP_CLK_FREQ_LEGACY_SHIFT ; 
 int /*<<< orphan*/  MADERA_DSP_CLOCK_1 ; 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct madera_priv*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct cs47l35* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
				 struct snd_kcontrol *kcontrol,
				 int event)
{
	struct snd_soc_component *component =
		FUNC4(w->dapm);
	struct cs47l35 *cs47l35 = FUNC3(component);
	struct madera_priv *priv = &cs47l35->core;
	struct madera *madera = priv->madera;
	unsigned int freq;
	int ret;

	ret = FUNC2(madera->regmap, MADERA_DSP_CLOCK_1, &freq);
	if (ret != 0) {
		FUNC0(madera->dev,
			"Failed to read MADERA_DSP_CLOCK_1: %d\n", ret);
		return ret;
	}

	freq &= MADERA_DSP_CLK_FREQ_LEGACY_MASK;
	freq >>= MADERA_DSP_CLK_FREQ_LEGACY_SHIFT;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		ret = FUNC1(&cs47l35->core, w->shift, freq);
		if (ret)
			return ret;
		break;
	default:
		break;
	}

	return FUNC5(w, kcontrol, event);
}