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
struct rt5645_priv {int hp_on; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMU 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct rt5645_priv* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
		struct snd_kcontrol *k, int  event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);
	struct rt5645_priv *rt5645 = FUNC1(component);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		if (rt5645->hp_on) {
			FUNC0(100);
			rt5645->hp_on = false;
		}
		break;

	default:
		return 0;
	}

	return 0;
}