#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wm8994_priv {int* channels; struct wm8994* wm8994; } ;
struct wm8994 {int type; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
#define  SND_SOC_DAPM_POST_PMD 133 
#define  SND_SOC_DAPM_POST_PMU 132 
#define  SND_SOC_DAPM_PRE_PMD 131 
#define  SND_SOC_DAPM_PRE_PMU 130 
#define  WM8958 129 
#define  WM8994 128 
 int WM8994_AIF1ADC1L_ENA ; 
 int WM8994_AIF1ADC1R_ENA ; 
 int WM8994_AIF1ADC2L_ENA ; 
 int WM8994_AIF1ADC2R_ENA ; 
 int WM8994_AIF1ADCL_SRC ; 
 int WM8994_AIF1ADCR_SRC ; 
 int WM8994_AIF1DAC1L_ENA ; 
 int WM8994_AIF1DAC1R_ENA ; 
 int WM8994_AIF1DAC2L_ENA ; 
 int WM8994_AIF1DAC2R_ENA ; 
 int WM8994_AIF1DACL_SRC ; 
 int WM8994_AIF1DACR_SRC ; 
 int WM8994_AIF1DSPCLK_ENA ; 
 int /*<<< orphan*/  WM8994_AIF1_CONTROL_1 ; 
 int /*<<< orphan*/  WM8994_AIF1_CONTROL_2 ; 
 int WM8994_AIF2DSPCLK_ENA ; 
 int /*<<< orphan*/  WM8994_CLOCKING_1 ; 
 int /*<<< orphan*/  WM8994_POWER_MANAGEMENT_4 ; 
 int /*<<< orphan*/  WM8994_POWER_MANAGEMENT_5 ; 
 int WM8994_SYSDSPCLK_ENA ; 
 struct wm8994_priv* FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* wm8994_vu_bits ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
		      struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC5(w->dapm);
	struct wm8994_priv *wm8994 = FUNC1(component);
	struct wm8994 *control = wm8994->wm8994;
	int mask = WM8994_AIF1DAC1L_ENA | WM8994_AIF1DAC1R_ENA;
	int i;
	int dac;
	int adc;
	int val;

	switch (control->type) {
	case WM8994:
	case WM8958:
		mask |= WM8994_AIF1DAC2L_ENA | WM8994_AIF1DAC2R_ENA;
		break;
	default:
		break;
	}

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		/* Don't enable timeslot 2 if not in use */
		if (wm8994->channels[0] <= 2)
			mask &= ~(WM8994_AIF1DAC2L_ENA | WM8994_AIF1DAC2R_ENA);

		val = FUNC2(component, WM8994_AIF1_CONTROL_1);
		if ((val & WM8994_AIF1ADCL_SRC) &&
		    (val & WM8994_AIF1ADCR_SRC))
			adc = WM8994_AIF1ADC1R_ENA | WM8994_AIF1ADC2R_ENA;
		else if (!(val & WM8994_AIF1ADCL_SRC) &&
			 !(val & WM8994_AIF1ADCR_SRC))
			adc = WM8994_AIF1ADC1L_ENA | WM8994_AIF1ADC2L_ENA;
		else
			adc = WM8994_AIF1ADC1R_ENA | WM8994_AIF1ADC2R_ENA |
				WM8994_AIF1ADC1L_ENA | WM8994_AIF1ADC2L_ENA;

		val = FUNC2(component, WM8994_AIF1_CONTROL_2);
		if ((val & WM8994_AIF1DACL_SRC) &&
		    (val & WM8994_AIF1DACR_SRC))
			dac = WM8994_AIF1DAC1R_ENA | WM8994_AIF1DAC2R_ENA;
		else if (!(val & WM8994_AIF1DACL_SRC) &&
			 !(val & WM8994_AIF1DACR_SRC))
			dac = WM8994_AIF1DAC1L_ENA | WM8994_AIF1DAC2L_ENA;
		else
			dac = WM8994_AIF1DAC1R_ENA | WM8994_AIF1DAC2R_ENA |
				WM8994_AIF1DAC1L_ENA | WM8994_AIF1DAC2L_ENA;

		FUNC3(component, WM8994_POWER_MANAGEMENT_4,
				    mask, adc);
		FUNC3(component, WM8994_POWER_MANAGEMENT_5,
				    mask, dac);
		FUNC3(component, WM8994_CLOCKING_1,
				    WM8994_AIF1DSPCLK_ENA |
				    WM8994_SYSDSPCLK_ENA,
				    WM8994_AIF1DSPCLK_ENA |
				    WM8994_SYSDSPCLK_ENA);
		FUNC3(component, WM8994_POWER_MANAGEMENT_4, mask,
				    WM8994_AIF1ADC1R_ENA |
				    WM8994_AIF1ADC1L_ENA |
				    WM8994_AIF1ADC2R_ENA |
				    WM8994_AIF1ADC2L_ENA);
		FUNC3(component, WM8994_POWER_MANAGEMENT_5, mask,
				    WM8994_AIF1DAC1R_ENA |
				    WM8994_AIF1DAC1L_ENA |
				    WM8994_AIF1DAC2R_ENA |
				    WM8994_AIF1DAC2L_ENA);
		break;

	case SND_SOC_DAPM_POST_PMU:
		for (i = 0; i < FUNC0(wm8994_vu_bits); i++)
			FUNC4(component, wm8994_vu_bits[i].reg,
				      FUNC2(component,
						   wm8994_vu_bits[i].reg));
		break;

	case SND_SOC_DAPM_PRE_PMD:
	case SND_SOC_DAPM_POST_PMD:
		FUNC3(component, WM8994_POWER_MANAGEMENT_5,
				    mask, 0);
		FUNC3(component, WM8994_POWER_MANAGEMENT_4,
				    mask, 0);

		val = FUNC2(component, WM8994_CLOCKING_1);
		if (val & WM8994_AIF2DSPCLK_ENA)
			val = WM8994_SYSDSPCLK_ENA;
		else
			val = 0;
		FUNC3(component, WM8994_CLOCKING_1,
				    WM8994_SYSDSPCLK_ENA |
				    WM8994_AIF1DSPCLK_ENA, val);
		break;
	}

	return 0;
}