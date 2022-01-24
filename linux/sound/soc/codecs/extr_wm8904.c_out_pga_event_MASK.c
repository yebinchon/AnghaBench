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
struct wm8904_priv {int* dcs_state; } ;
struct snd_soc_dapm_widget {int shift; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAPM_POST_PMD 133 
#define  SND_SOC_DAPM_POST_PMU 132 
#define  SND_SOC_DAPM_PRE_PMD 131 
#define  SND_SOC_DAPM_PRE_PMU 130 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
#define  WM8904_ANALOGUE_HP_0 129 
#define  WM8904_ANALOGUE_LINEOUT_0 128 
 int WM8904_DCS_CAL_COMPLETE_SHIFT ; 
 int WM8904_DCS_ENA_CHAN_0 ; 
 int WM8904_DCS_ENA_CHAN_1 ; 
 int WM8904_DCS_ENA_CHAN_2 ; 
 int WM8904_DCS_ENA_CHAN_3 ; 
 int WM8904_DCS_TRIG_STARTUP_0_SHIFT ; 
 int WM8904_DC_SERVO_0 ; 
 int WM8904_DC_SERVO_1 ; 
 int WM8904_DC_SERVO_6 ; 
 int WM8904_DC_SERVO_7 ; 
 int WM8904_DC_SERVO_8 ; 
 int WM8904_DC_SERVO_9 ; 
 int WM8904_DC_SERVO_READBACK_0 ; 
 int WM8904_HPL_ENA ; 
 int WM8904_HPL_ENA_DLY ; 
 int WM8904_HPL_ENA_OUTP ; 
 int WM8904_HPL_PGA_ENA ; 
 int WM8904_HPL_RMV_SHORT ; 
 int WM8904_HPR_ENA ; 
 int WM8904_HPR_ENA_DLY ; 
 int WM8904_HPR_ENA_OUTP ; 
 int WM8904_HPR_PGA_ENA ; 
 int WM8904_HPR_RMV_SHORT ; 
 int WM8904_POWER_MANAGEMENT_2 ; 
 int WM8904_POWER_MANAGEMENT_3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct wm8904_priv* FUNC4 (struct snd_soc_component*) ; 
 void* FUNC5 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int,int) ; 
 struct snd_soc_component* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_dapm_widget *w,
			 struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC8(w->dapm);
	struct wm8904_priv *wm8904 = FUNC4(component);
	int reg, val;
	int dcs_mask;
	int dcs_l, dcs_r;
	int dcs_l_reg, dcs_r_reg;
	int timeout;
	int pwr_reg;

	/* This code is shared between HP and LINEOUT; we do all our
	 * power management in stereo pairs to avoid latency issues so
	 * we reuse shift to identify which rather than strcmp() the
	 * name. */
	reg = w->shift;

	switch (reg) {
	case WM8904_ANALOGUE_HP_0:
		pwr_reg = WM8904_POWER_MANAGEMENT_2;
		dcs_mask = WM8904_DCS_ENA_CHAN_0 | WM8904_DCS_ENA_CHAN_1;
		dcs_r_reg = WM8904_DC_SERVO_8;
		dcs_l_reg = WM8904_DC_SERVO_9;
		dcs_l = 0;
		dcs_r = 1;
		break;
	case WM8904_ANALOGUE_LINEOUT_0:
		pwr_reg = WM8904_POWER_MANAGEMENT_3;
		dcs_mask = WM8904_DCS_ENA_CHAN_2 | WM8904_DCS_ENA_CHAN_3;
		dcs_r_reg = WM8904_DC_SERVO_6;
		dcs_l_reg = WM8904_DC_SERVO_7;
		dcs_l = 2;
		dcs_r = 3;
		break;
	default:
		FUNC0(1, "Invalid reg %d\n", reg);
		return -EINVAL;
	}

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		/* Power on the PGAs */
		FUNC6(component, pwr_reg,
				    WM8904_HPL_PGA_ENA | WM8904_HPR_PGA_ENA,
				    WM8904_HPL_PGA_ENA | WM8904_HPR_PGA_ENA);

		/* Power on the amplifier */
		FUNC6(component, reg,
				    WM8904_HPL_ENA | WM8904_HPR_ENA,
				    WM8904_HPL_ENA | WM8904_HPR_ENA);


		/* Enable the first stage */
		FUNC6(component, reg,
				    WM8904_HPL_ENA_DLY | WM8904_HPR_ENA_DLY,
				    WM8904_HPL_ENA_DLY | WM8904_HPR_ENA_DLY);

		/* Power up the DC servo */
		FUNC6(component, WM8904_DC_SERVO_0,
				    dcs_mask, dcs_mask);

		/* Either calibrate the DC servo or restore cached state
		 * if we have that.
		 */
		if (wm8904->dcs_state[dcs_l] || wm8904->dcs_state[dcs_r]) {
			FUNC1(component->dev, "Restoring DC servo state\n");

			FUNC7(component, dcs_l_reg,
				      wm8904->dcs_state[dcs_l]);
			FUNC7(component, dcs_r_reg,
				      wm8904->dcs_state[dcs_r]);

			FUNC7(component, WM8904_DC_SERVO_1, dcs_mask);

			timeout = 20;
		} else {
			FUNC1(component->dev, "Calibrating DC servo\n");

			FUNC7(component, WM8904_DC_SERVO_1,
				dcs_mask << WM8904_DCS_TRIG_STARTUP_0_SHIFT);

			timeout = 500;
		}

		/* Wait for DC servo to complete */
		dcs_mask <<= WM8904_DCS_CAL_COMPLETE_SHIFT;
		do {
			val = FUNC5(component, WM8904_DC_SERVO_READBACK_0);
			if ((val & dcs_mask) == dcs_mask)
				break;

			FUNC3(1);
		} while (--timeout);

		if ((val & dcs_mask) != dcs_mask)
			FUNC2(component->dev, "DC servo timed out\n");
		else
			FUNC1(component->dev, "DC servo ready\n");

		/* Enable the output stage */
		FUNC6(component, reg,
				    WM8904_HPL_ENA_OUTP | WM8904_HPR_ENA_OUTP,
				    WM8904_HPL_ENA_OUTP | WM8904_HPR_ENA_OUTP);
		break;

	case SND_SOC_DAPM_POST_PMU:
		/* Unshort the output itself */
		FUNC6(component, reg,
				    WM8904_HPL_RMV_SHORT |
				    WM8904_HPR_RMV_SHORT,
				    WM8904_HPL_RMV_SHORT |
				    WM8904_HPR_RMV_SHORT);

		break;

	case SND_SOC_DAPM_PRE_PMD:
		/* Short the output */
		FUNC6(component, reg,
				    WM8904_HPL_RMV_SHORT |
				    WM8904_HPR_RMV_SHORT, 0);
		break;

	case SND_SOC_DAPM_POST_PMD:
		/* Cache the DC servo configuration; this will be
		 * invalidated if we change the configuration. */
		wm8904->dcs_state[dcs_l] = FUNC5(component, dcs_l_reg);
		wm8904->dcs_state[dcs_r] = FUNC5(component, dcs_r_reg);

		FUNC6(component, WM8904_DC_SERVO_0,
				    dcs_mask, 0);

		/* Disable the amplifier input and output stages */
		FUNC6(component, reg,
				    WM8904_HPL_ENA | WM8904_HPR_ENA |
				    WM8904_HPL_ENA_DLY | WM8904_HPR_ENA_DLY |
				    WM8904_HPL_ENA_OUTP | WM8904_HPR_ENA_OUTP,
				    0);

		/* PGAs too */
		FUNC6(component, pwr_reg,
				    WM8904_HPL_PGA_ENA | WM8904_HPR_PGA_ENA,
				    0);
		break;
	}

	return 0;
}