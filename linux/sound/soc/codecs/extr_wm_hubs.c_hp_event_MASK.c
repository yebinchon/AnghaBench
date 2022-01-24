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
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  WM8993_ANALOGUE_HP_0 ; 
 int /*<<< orphan*/  WM8993_CHARGE_PUMP_1 ; 
 unsigned int WM8993_CP_ENA ; 
 unsigned int WM8993_DCS_TIMER_PERIOD_01_MASK ; 
 int /*<<< orphan*/  WM8993_DC_SERVO_0 ; 
 int /*<<< orphan*/  WM8993_DC_SERVO_1 ; 
 unsigned int WM8993_HPOUT1L_DLY ; 
 unsigned int WM8993_HPOUT1L_ENA ; 
 unsigned int WM8993_HPOUT1L_OUTP ; 
 unsigned int WM8993_HPOUT1L_RMV_SHORT ; 
 unsigned int WM8993_HPOUT1R_DLY ; 
 unsigned int WM8993_HPOUT1R_ENA ; 
 unsigned int WM8993_HPOUT1R_OUTP ; 
 unsigned int WM8993_HPOUT1R_RMV_SHORT ; 
 int /*<<< orphan*/  WM8993_POWER_MANAGEMENT_1 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
		    struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC5(w->dapm);
	unsigned int reg = FUNC2(component, WM8993_ANALOGUE_HP_0);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		FUNC3(component, WM8993_CHARGE_PUMP_1,
				    WM8993_CP_ENA, WM8993_CP_ENA);

		FUNC1(5);

		FUNC3(component, WM8993_POWER_MANAGEMENT_1,
				    WM8993_HPOUT1L_ENA | WM8993_HPOUT1R_ENA,
				    WM8993_HPOUT1L_ENA | WM8993_HPOUT1R_ENA);

		reg |= WM8993_HPOUT1L_DLY | WM8993_HPOUT1R_DLY;
		FUNC4(component, WM8993_ANALOGUE_HP_0, reg);

		FUNC3(component, WM8993_DC_SERVO_1,
				    WM8993_DCS_TIMER_PERIOD_01_MASK, 0);

		FUNC0(component);

		reg |= WM8993_HPOUT1R_OUTP | WM8993_HPOUT1R_RMV_SHORT |
			WM8993_HPOUT1L_OUTP | WM8993_HPOUT1L_RMV_SHORT;
		FUNC4(component, WM8993_ANALOGUE_HP_0, reg);
		break;

	case SND_SOC_DAPM_PRE_PMD:
		FUNC3(component, WM8993_ANALOGUE_HP_0,
				    WM8993_HPOUT1L_OUTP |
				    WM8993_HPOUT1R_OUTP |
				    WM8993_HPOUT1L_RMV_SHORT |
				    WM8993_HPOUT1R_RMV_SHORT, 0);

		FUNC3(component, WM8993_ANALOGUE_HP_0,
				    WM8993_HPOUT1L_DLY |
				    WM8993_HPOUT1R_DLY, 0);

		FUNC4(component, WM8993_DC_SERVO_0, 0);

		FUNC3(component, WM8993_POWER_MANAGEMENT_1,
				    WM8993_HPOUT1L_ENA | WM8993_HPOUT1R_ENA,
				    0);
		break;
	}

	return 0;
}