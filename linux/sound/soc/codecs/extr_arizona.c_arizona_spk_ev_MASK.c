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
struct snd_soc_dapm_widget {int shift; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct snd_kcontrol {int dummy; } ;
struct arizona {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_INTERRUPT_RAW_STATUS_3 ; 
 int /*<<< orphan*/  ARIZONA_OUTPUT_ENABLES_1 ; 
 int ARIZONA_SPK_OVERHEAT_STS ; 
 int EBUSY ; 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int FUNC0 (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct arizona* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
			  struct snd_kcontrol *kcontrol,
			  int event)
{
	struct snd_soc_component *component = FUNC5(w->dapm);
	struct arizona *arizona = FUNC2(component->dev->parent);
	int val;

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		val = FUNC4(component,
					       ARIZONA_INTERRUPT_RAW_STATUS_3);
		if (val & ARIZONA_SPK_OVERHEAT_STS) {
			FUNC1(arizona->dev,
				 "Speaker not enabled due to temperature\n");
			return -EBUSY;
		}

		FUNC3(arizona->regmap,
					 ARIZONA_OUTPUT_ENABLES_1,
					 1 << w->shift, 1 << w->shift);
		break;
	case SND_SOC_DAPM_PRE_PMD:
		FUNC3(arizona->regmap,
					 ARIZONA_OUTPUT_ENABLES_1,
					 1 << w->shift, 0);
		break;
	default:
		break;
	}

	return FUNC0(w, kcontrol, event);
}