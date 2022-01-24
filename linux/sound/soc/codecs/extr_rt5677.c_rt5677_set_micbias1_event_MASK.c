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
struct rt5677_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5677_PWR_ANLG2 ; 
 int RT5677_PWR_CLK_MB ; 
 int RT5677_PWR_CLK_MB1 ; 
 int RT5677_PWR_PP_MB1 ; 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct rt5677_priv* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);
	struct rt5677_priv *rt5677 = FUNC1(component);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		FUNC0(rt5677->regmap, RT5677_PWR_ANLG2,
			RT5677_PWR_CLK_MB1 | RT5677_PWR_PP_MB1 |
			RT5677_PWR_CLK_MB, RT5677_PWR_CLK_MB1 |
			RT5677_PWR_PP_MB1 | RT5677_PWR_CLK_MB);
		break;

	case SND_SOC_DAPM_PRE_PMD:
		FUNC0(rt5677->regmap, RT5677_PWR_ANLG2,
			RT5677_PWR_CLK_MB1 | RT5677_PWR_PP_MB1 |
			RT5677_PWR_CLK_MB, 0);
		break;

	default:
		return 0;
	}

	return 0;
}