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

/* Variables and functions */
 int RT5645_DET_CLK_DIS ; 
 int RT5645_DET_CLK_MASK ; 
 int RT5645_DET_CLK_MODE1 ; 
 int /*<<< orphan*/  RT5645_EQ_CTRL2 ; 
 int /*<<< orphan*/  RT5645_GEN_CTRL3 ; 
 int RT5645_PWR_CLS_D ; 
 int RT5645_PWR_CLS_D_L ; 
 int RT5645_PWR_CLS_D_R ; 
 int /*<<< orphan*/  RT5645_PWR_DIG1 ; 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC3(w->dapm);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		FUNC0(component);
		FUNC1(component, RT5645_PWR_DIG1,
			RT5645_PWR_CLS_D | RT5645_PWR_CLS_D_R |
			RT5645_PWR_CLS_D_L,
			RT5645_PWR_CLS_D | RT5645_PWR_CLS_D_R |
			RT5645_PWR_CLS_D_L);
		FUNC1(component, RT5645_GEN_CTRL3,
			RT5645_DET_CLK_MASK, RT5645_DET_CLK_MODE1);
		break;

	case SND_SOC_DAPM_PRE_PMD:
		FUNC1(component, RT5645_GEN_CTRL3,
			RT5645_DET_CLK_MASK, RT5645_DET_CLK_DIS);
		FUNC2(component, RT5645_EQ_CTRL2, 0);
		FUNC1(component, RT5645_PWR_DIG1,
			RT5645_PWR_CLS_D | RT5645_PWR_CLS_D_R |
			RT5645_PWR_CLS_D_L, 0);
		break;

	default:
		return 0;
	}

	return 0;
}