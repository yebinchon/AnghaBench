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
 int /*<<< orphan*/  RT5659_CLASSD_1 ; 
 int /*<<< orphan*/  RT5659_CLASSD_2 ; 
 int /*<<< orphan*/  RT5659_CLASSD_CTRL_1 ; 
 int RT5659_M_RI_DIG ; 
 int RT5659_POW_CLSD_DB_DIS ; 
 int RT5659_POW_CLSD_DB_EN ; 
 int RT5659_POW_CLSD_DB_MASK ; 
 int /*<<< orphan*/  RT5659_SPK_DC_CAILB_CTRL_3 ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		FUNC0(component, RT5659_CLASSD_CTRL_1,
			RT5659_POW_CLSD_DB_MASK, RT5659_POW_CLSD_DB_EN);
		FUNC0(component, RT5659_CLASSD_2,
			RT5659_M_RI_DIG, RT5659_M_RI_DIG);
		FUNC1(component, RT5659_CLASSD_1, 0x0803);
		FUNC1(component, RT5659_SPK_DC_CAILB_CTRL_3, 0x0000);
		break;

	case SND_SOC_DAPM_POST_PMD:
		FUNC1(component, RT5659_CLASSD_1, 0x0011);
		FUNC0(component, RT5659_CLASSD_2,
			RT5659_M_RI_DIG, 0x0);
		FUNC1(component, RT5659_SPK_DC_CAILB_CTRL_3, 0x0003);
		FUNC0(component, RT5659_CLASSD_CTRL_1,
			RT5659_POW_CLSD_DB_MASK, RT5659_POW_CLSD_DB_DIS);
		break;

	default:
		return 0;
	}

	return 0;

}