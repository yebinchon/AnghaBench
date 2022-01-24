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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct sgtl5000_priv {int micbias_resistor; } ;

/* Variables and functions */
 int /*<<< orphan*/  SGTL5000_BIAS_R_MASK ; 
 int SGTL5000_BIAS_R_SHIFT ; 
 int /*<<< orphan*/  SGTL5000_CHIP_MIC_CTRL ; 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 struct sgtl5000_priv* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);
	struct sgtl5000_priv *sgtl5000 = FUNC0(component);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		/* change mic bias resistor */
		FUNC1(component, SGTL5000_CHIP_MIC_CTRL,
			SGTL5000_BIAS_R_MASK,
			sgtl5000->micbias_resistor << SGTL5000_BIAS_R_SHIFT);
		break;

	case SND_SOC_DAPM_PRE_PMD:
		FUNC1(component, SGTL5000_CHIP_MIC_CTRL,
				SGTL5000_BIAS_R_MASK, 0);
		break;
	}
	return 0;
}