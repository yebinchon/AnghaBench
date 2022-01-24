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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct snd_kcontrol {int dummy; } ;
struct arizona {int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_DVFS_ADSP1_RQ ; 
 unsigned int ARIZONA_SYSCLK_FREQ_MASK ; 
 unsigned int ARIZONA_SYSCLK_FREQ_SHIFT ; 
 int /*<<< orphan*/  ARIZONA_SYSTEM_CLOCK_1 ; 
 int EIO ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 struct arizona* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct snd_soc_component* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_dapm_widget*,unsigned int) ; 
 int FUNC8 (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_dapm_widget *w,
				struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC6(w->dapm);
	struct arizona *arizona = FUNC3(component->dev->parent);
	unsigned int v = 0;
	int ret;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		ret = FUNC5(arizona->regmap, ARIZONA_SYSTEM_CLOCK_1, &v);
		if (ret != 0) {
			FUNC2(component->dev,
				"Failed to read SYSCLK state: %d\n", ret);
			return -EIO;
		}

		v = (v & ARIZONA_SYSCLK_FREQ_MASK) >> ARIZONA_SYSCLK_FREQ_SHIFT;

		if (v >= 3) {
			ret = FUNC1(component, ARIZONA_DVFS_ADSP1_RQ);
			if (ret) {
				FUNC2(component->dev,
					"Failed to raise DVFS: %d\n", ret);
				return ret;
			}
		}

		FUNC7(w, v);
		break;

	case SND_SOC_DAPM_POST_PMD:
		ret = FUNC0(component, ARIZONA_DVFS_ADSP1_RQ);
		if (ret)
			FUNC4(component->dev,
				 "Failed to lower DVFS: %d\n", ret);
		break;

	default:
		break;
	}

	return FUNC8(w, kcontrol, event);
}