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
 int /*<<< orphan*/  RT5665_HP_LOGIC_CTRL_2 ; 
 int /*<<< orphan*/  RT5665_NG2_DIS ; 
 int /*<<< orphan*/  RT5665_NG2_EN ; 
 int /*<<< orphan*/  RT5665_NG2_EN_MASK ; 
 int /*<<< orphan*/  RT5665_STO_NG2_CTRL_1 ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		FUNC0(component, RT5665_STO_NG2_CTRL_1,
			RT5665_NG2_EN_MASK, RT5665_NG2_EN);
		FUNC1(component, RT5665_HP_LOGIC_CTRL_2, 0x0003);
		break;

	case SND_SOC_DAPM_POST_PMD:
		FUNC1(component, RT5665_HP_LOGIC_CTRL_2, 0x0002);
		FUNC0(component, RT5665_STO_NG2_CTRL_1,
			RT5665_NG2_EN_MASK, RT5665_NG2_DIS);
		break;

	default:
		return 0;
	}

	return 0;

}