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
struct nau8824 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NAU8824_CLASSD_CLAMP_DIS ; 
 int /*<<< orphan*/  NAU8824_REG_ANALOG_CONTROL_2 ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nau8824* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);
	struct nau8824 *nau8824 = FUNC1(component);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		FUNC0(nau8824->regmap,
			NAU8824_REG_ANALOG_CONTROL_2,
			NAU8824_CLASSD_CLAMP_DIS, NAU8824_CLASSD_CLAMP_DIS);
		break;
	case SND_SOC_DAPM_POST_PMD:
		FUNC0(nau8824->regmap,
			NAU8824_REG_ANALOG_CONTROL_2,
			NAU8824_CLASSD_CLAMP_DIS, 0);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}