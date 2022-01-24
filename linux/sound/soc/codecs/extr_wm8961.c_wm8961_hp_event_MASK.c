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
typedef  int u16 ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int SND_SOC_DAPM_POST_PMU ; 
 int SND_SOC_DAPM_PRE_PMD ; 
 int /*<<< orphan*/  WM8961_ANALOGUE_HP_0 ; 
 int /*<<< orphan*/  WM8961_CHARGE_PUMP_1 ; 
 int WM8961_CP_ENA ; 
 int WM8961_DCS_ENA_CHAN_HPL ; 
 int WM8961_DCS_ENA_CHAN_HPR ; 
 int WM8961_DCS_TRIG_STARTUP_HPL ; 
 int WM8961_DCS_TRIG_STARTUP_HPR ; 
 int /*<<< orphan*/  WM8961_DC_SERVO_1 ; 
 int WM8961_HPL_ENA ; 
 int WM8961_HPL_ENA_DLY ; 
 int WM8961_HPL_ENA_OUTP ; 
 int WM8961_HPL_RMV_SHORT ; 
 int WM8961_HPR_ENA ; 
 int WM8961_HPR_ENA_DLY ; 
 int WM8961_HPR_ENA_OUTP ; 
 int WM8961_HPR_RMV_SHORT ; 
 int WM8961_LOUT1_PGA ; 
 int /*<<< orphan*/  WM8961_PWR_MGMT_2 ; 
 int WM8961_ROUT1_PGA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_component* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dapm_widget *w,
			   struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC6(w->dapm);
	u16 hp_reg = FUNC4(component, WM8961_ANALOGUE_HP_0);
	u16 cp_reg = FUNC4(component, WM8961_CHARGE_PUMP_1);
	u16 pwr_reg = FUNC4(component, WM8961_PWR_MGMT_2);
	u16 dcs_reg = FUNC4(component, WM8961_DC_SERVO_1);
	int timeout = 500;

	if (event & SND_SOC_DAPM_POST_PMU) {
		/* Make sure the output is shorted */
		hp_reg &= ~(WM8961_HPR_RMV_SHORT | WM8961_HPL_RMV_SHORT);
		FUNC5(component, WM8961_ANALOGUE_HP_0, hp_reg);

		/* Enable the charge pump */
		cp_reg |= WM8961_CP_ENA;
		FUNC5(component, WM8961_CHARGE_PUMP_1, cp_reg);
		FUNC2(5);

		/* Enable the PGA */
		pwr_reg |= WM8961_LOUT1_PGA | WM8961_ROUT1_PGA;
		FUNC5(component, WM8961_PWR_MGMT_2, pwr_reg);

		/* Enable the amplifier */
		hp_reg |= WM8961_HPR_ENA | WM8961_HPL_ENA;
		FUNC5(component, WM8961_ANALOGUE_HP_0, hp_reg);

		/* Second stage enable */
		hp_reg |= WM8961_HPR_ENA_DLY | WM8961_HPL_ENA_DLY;
		FUNC5(component, WM8961_ANALOGUE_HP_0, hp_reg);

		/* Enable the DC servo & trigger startup */
		dcs_reg |=
			WM8961_DCS_ENA_CHAN_HPR | WM8961_DCS_TRIG_STARTUP_HPR |
			WM8961_DCS_ENA_CHAN_HPL | WM8961_DCS_TRIG_STARTUP_HPL;
		FUNC0(component->dev, "Enabling DC servo\n");

		FUNC5(component, WM8961_DC_SERVO_1, dcs_reg);
		do {
			FUNC3(1);
			dcs_reg = FUNC4(component, WM8961_DC_SERVO_1);
		} while (--timeout &&
			 dcs_reg & (WM8961_DCS_TRIG_STARTUP_HPR |
				WM8961_DCS_TRIG_STARTUP_HPL));
		if (dcs_reg & (WM8961_DCS_TRIG_STARTUP_HPR |
			       WM8961_DCS_TRIG_STARTUP_HPL))
			FUNC1(component->dev, "DC servo timed out\n");
		else
			FUNC0(component->dev, "DC servo startup complete\n");

		/* Enable the output stage */
		hp_reg |= WM8961_HPR_ENA_OUTP | WM8961_HPL_ENA_OUTP;
		FUNC5(component, WM8961_ANALOGUE_HP_0, hp_reg);

		/* Remove the short on the output stage */
		hp_reg |= WM8961_HPR_RMV_SHORT | WM8961_HPL_RMV_SHORT;
		FUNC5(component, WM8961_ANALOGUE_HP_0, hp_reg);
	}

	if (event & SND_SOC_DAPM_PRE_PMD) {
		/* Short the output */
		hp_reg &= ~(WM8961_HPR_RMV_SHORT | WM8961_HPL_RMV_SHORT);
		FUNC5(component, WM8961_ANALOGUE_HP_0, hp_reg);

		/* Disable the output stage */
		hp_reg &= ~(WM8961_HPR_ENA_OUTP | WM8961_HPL_ENA_OUTP);
		FUNC5(component, WM8961_ANALOGUE_HP_0, hp_reg);

		/* Disable DC offset cancellation */
		dcs_reg &= ~(WM8961_DCS_ENA_CHAN_HPR |
			     WM8961_DCS_ENA_CHAN_HPL);
		FUNC5(component, WM8961_DC_SERVO_1, dcs_reg);

		/* Finish up */
		hp_reg &= ~(WM8961_HPR_ENA_DLY | WM8961_HPR_ENA |
			    WM8961_HPL_ENA_DLY | WM8961_HPL_ENA);
		FUNC5(component, WM8961_ANALOGUE_HP_0, hp_reg);

		/* Disable the PGA */
		pwr_reg &= ~(WM8961_LOUT1_PGA | WM8961_ROUT1_PGA);
		FUNC5(component, WM8961_PWR_MGMT_2, pwr_reg);

		/* Disable the charge pump */
		FUNC0(component->dev, "Disabling charge pump\n");
		FUNC5(component, WM8961_CHARGE_PUMP_1,
			     cp_reg & ~WM8961_CP_ENA);
	}

	return 0;
}