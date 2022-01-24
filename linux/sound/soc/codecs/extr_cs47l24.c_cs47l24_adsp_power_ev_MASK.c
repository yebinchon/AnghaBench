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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct snd_kcontrol {int dummy; } ;
struct arizona {int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 unsigned int ARIZONA_SYSCLK_FREQ_MASK ; 
 unsigned int ARIZONA_SYSCLK_FREQ_SHIFT ; 
 int /*<<< orphan*/  ARIZONA_SYSTEM_CLOCK_1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 struct arizona* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_widget*,unsigned int) ; 
 int FUNC5 (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
				 struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC3(w->dapm);
	struct arizona *arizona = FUNC1(component->dev->parent);
	unsigned int v;
	int ret;

	ret = FUNC2(arizona->regmap, ARIZONA_SYSTEM_CLOCK_1, &v);
	if (ret != 0) {
		FUNC0(component->dev, "Failed to read SYSCLK state: %d\n", ret);
		return ret;
	}

	v = (v & ARIZONA_SYSCLK_FREQ_MASK) >> ARIZONA_SYSCLK_FREQ_SHIFT;

	FUNC4(w, v);

	return FUNC5(w, kcontrol, event);
}