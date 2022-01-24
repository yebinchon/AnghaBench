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
struct snd_soc_dapm_widget {int shift; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct madera_priv {int /*<<< orphan*/  in_pending; } ;

/* Variables and functions */
 int MADERA_ADC_DIGITAL_VOLUME_1L ; 
 int MADERA_ADC_DIGITAL_VOLUME_1R ; 
 int MADERA_IN1L_MUTE ; 
 int /*<<< orphan*/  MADERA_INPUT_ENABLES ; 
 int MADERA_IN_VU ; 
#define  SND_SOC_DAPM_POST_PMD 131 
#define  SND_SOC_DAPM_POST_PMU 130 
#define  SND_SOC_DAPM_PRE_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (struct madera_priv*,int) ; 
 struct madera_priv* FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,unsigned int,int,int) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

int FUNC6(struct snd_soc_dapm_widget *w, struct snd_kcontrol *kcontrol,
		 int event)
{
	struct snd_soc_component *component = FUNC4(w->dapm);
	struct madera_priv *priv = FUNC1(component);
	unsigned int reg, val;
	int ret;

	if (w->shift % 2)
		reg = MADERA_ADC_DIGITAL_VOLUME_1L + ((w->shift / 2) * 8);
	else
		reg = MADERA_ADC_DIGITAL_VOLUME_1R + ((w->shift / 2) * 8);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		priv->in_pending++;
		break;
	case SND_SOC_DAPM_POST_PMU:
		priv->in_pending--;
		FUNC3(component, reg,
					      MADERA_IN1L_MUTE, 0);

		/* If this is the last input pending then allow VU */
		if (priv->in_pending == 0) {
			FUNC5(1000, 3000);
			FUNC0(priv, true);
		}
		break;
	case SND_SOC_DAPM_PRE_PMD:
		FUNC3(component, reg,
					      MADERA_IN1L_MUTE | MADERA_IN_VU,
					      MADERA_IN1L_MUTE | MADERA_IN_VU);
		break;
	case SND_SOC_DAPM_POST_PMD:
		/* Disable volume updates if no inputs are enabled */
		ret = FUNC2(component, MADERA_INPUT_ENABLES,
					     &val);
		if (!ret && !val)
			FUNC0(priv, false);
		break;
	default:
		break;
	}

	return 0;
}