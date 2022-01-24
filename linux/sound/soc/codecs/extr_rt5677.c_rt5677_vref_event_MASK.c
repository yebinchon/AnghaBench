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
struct rt5677_priv {int is_vref_slow; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5677_PWR_ANLG1 ; 
 int RT5677_PWR_FV1 ; 
 int RT5677_PWR_FV2 ; 
 int /*<<< orphan*/  SND_SOC_BIAS_ON ; 
#define  SND_SOC_DAPM_POST_PMU 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 
 struct rt5677_priv* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC4(w->dapm);
	struct rt5677_priv *rt5677 = FUNC3(component);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		if (FUNC2(component) != SND_SOC_BIAS_ON &&
			!rt5677->is_vref_slow) {
			FUNC0(20);
			FUNC1(rt5677->regmap, RT5677_PWR_ANLG1,
				RT5677_PWR_FV1 | RT5677_PWR_FV2,
				RT5677_PWR_FV1 | RT5677_PWR_FV2);
			rt5677->is_vref_slow = true;
		}
		break;

	default:
		return 0;
	}

	return 0;
}