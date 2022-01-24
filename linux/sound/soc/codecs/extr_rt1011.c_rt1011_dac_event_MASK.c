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
 int /*<<< orphan*/  RT1011_CLASSD_INTERNAL_SET_1 ; 
 int RT1011_DRIVER_READY_SPK ; 
 int /*<<< orphan*/  RT1011_POWER_9 ; 
 int RT1011_POW_MNL_SDB ; 
 int RT1011_POW_MNL_SDB_MASK ; 
 int /*<<< orphan*/  RT1011_SPK_TEMP_PROTECT_0 ; 
 int RT1011_STP_EN ; 
 int RT1011_STP_EN_MASK ; 
 int RT1011_STP_RS_CLB_EN ; 
 int RT1011_STP_RS_CLB_EN_MASK ; 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component =
		FUNC2(w->dapm);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		FUNC1(component,
			RT1011_SPK_TEMP_PROTECT_0,
			RT1011_STP_EN_MASK | RT1011_STP_RS_CLB_EN_MASK,
			RT1011_STP_EN | RT1011_STP_RS_CLB_EN);
		FUNC1(component, RT1011_POWER_9,
			RT1011_POW_MNL_SDB_MASK, RT1011_POW_MNL_SDB);
		FUNC0(50);
		FUNC1(component,
			RT1011_CLASSD_INTERNAL_SET_1,
			RT1011_DRIVER_READY_SPK, RT1011_DRIVER_READY_SPK);
		break;
	case SND_SOC_DAPM_PRE_PMD:
		FUNC1(component, RT1011_POWER_9,
			RT1011_POW_MNL_SDB_MASK, 0);
		FUNC1(component,
			RT1011_SPK_TEMP_PROTECT_0,
			RT1011_STP_EN_MASK | RT1011_STP_RS_CLB_EN_MASK, 0);
		FUNC0(200);
		FUNC1(component,
			RT1011_CLASSD_INTERNAL_SET_1,
			RT1011_DRIVER_READY_SPK, 0);
		break;

	default:
		return 0;
	}

	return 0;
}