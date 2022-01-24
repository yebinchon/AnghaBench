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
struct snd_soc_dapm_widget {int on_val; int /*<<< orphan*/  shift; int /*<<< orphan*/  regulator; int /*<<< orphan*/  name; TYPE_1__* dapm; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int SND_SOC_DAPM_REGULATOR_BYPASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(struct snd_soc_dapm_widget *w,
		   struct snd_kcontrol *kcontrol, int event)
{
	int ret;

	FUNC5(w->dapm);

	if (FUNC0(event)) {
		if (w->on_val & SND_SOC_DAPM_REGULATOR_BYPASS) {
			ret = FUNC2(w->regulator, false);
			if (ret != 0)
				FUNC1(w->dapm->dev,
					 "ASoC: Failed to unbypass %s: %d\n",
					 w->name, ret);
		}

		return FUNC4(w->regulator);
	} else {
		if (w->on_val & SND_SOC_DAPM_REGULATOR_BYPASS) {
			ret = FUNC2(w->regulator, true);
			if (ret != 0)
				FUNC1(w->dapm->dev,
					 "ASoC: Failed to bypass %s: %d\n",
					 w->name, ret);
		}

		return FUNC3(w->regulator, w->shift);
	}
}