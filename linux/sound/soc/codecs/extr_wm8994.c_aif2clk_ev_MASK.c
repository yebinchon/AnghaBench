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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
#define  SND_SOC_DAPM_POST_PMD 131 
#define  SND_SOC_DAPM_POST_PMU 130 
#define  SND_SOC_DAPM_PRE_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int WM8994_AIF1DSPCLK_ENA ; 
 int WM8994_AIF2ADCL_ENA ; 
 int WM8994_AIF2ADCL_SRC ; 
 int WM8994_AIF2ADCR_ENA ; 
 int WM8994_AIF2ADCR_SRC ; 
 int WM8994_AIF2DACL_ENA ; 
 int WM8994_AIF2DACL_SRC ; 
 int WM8994_AIF2DACR_ENA ; 
 int WM8994_AIF2DACR_SRC ; 
 int WM8994_AIF2DSPCLK_ENA ; 
 int /*<<< orphan*/  WM8994_AIF2_CONTROL_1 ; 
 int /*<<< orphan*/  WM8994_AIF2_CONTROL_2 ; 
 int /*<<< orphan*/  WM8994_CLOCKING_1 ; 
 int /*<<< orphan*/  WM8994_POWER_MANAGEMENT_4 ; 
 int /*<<< orphan*/  WM8994_POWER_MANAGEMENT_5 ; 
 int WM8994_SYSDSPCLK_ENA ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* wm8994_vu_bits ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
		      struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC4(w->dapm);
	int i;
	int dac;
	int adc;
	int val;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		val = FUNC1(component, WM8994_AIF2_CONTROL_1);
		if ((val & WM8994_AIF2ADCL_SRC) &&
		    (val & WM8994_AIF2ADCR_SRC))
			adc = WM8994_AIF2ADCR_ENA;
		else if (!(val & WM8994_AIF2ADCL_SRC) &&
			 !(val & WM8994_AIF2ADCR_SRC))
			adc = WM8994_AIF2ADCL_ENA;
		else
			adc = WM8994_AIF2ADCL_ENA | WM8994_AIF2ADCR_ENA;


		val = FUNC1(component, WM8994_AIF2_CONTROL_2);
		if ((val & WM8994_AIF2DACL_SRC) &&
		    (val & WM8994_AIF2DACR_SRC))
			dac = WM8994_AIF2DACR_ENA;
		else if (!(val & WM8994_AIF2DACL_SRC) &&
			 !(val & WM8994_AIF2DACR_SRC))
			dac = WM8994_AIF2DACL_ENA;
		else
			dac = WM8994_AIF2DACL_ENA | WM8994_AIF2DACR_ENA;

		FUNC2(component, WM8994_POWER_MANAGEMENT_4,
				    WM8994_AIF2ADCL_ENA |
				    WM8994_AIF2ADCR_ENA, adc);
		FUNC2(component, WM8994_POWER_MANAGEMENT_5,
				    WM8994_AIF2DACL_ENA |
				    WM8994_AIF2DACR_ENA, dac);
		FUNC2(component, WM8994_CLOCKING_1,
				    WM8994_AIF2DSPCLK_ENA |
				    WM8994_SYSDSPCLK_ENA,
				    WM8994_AIF2DSPCLK_ENA |
				    WM8994_SYSDSPCLK_ENA);
		FUNC2(component, WM8994_POWER_MANAGEMENT_4,
				    WM8994_AIF2ADCL_ENA |
				    WM8994_AIF2ADCR_ENA,
				    WM8994_AIF2ADCL_ENA |
				    WM8994_AIF2ADCR_ENA);
		FUNC2(component, WM8994_POWER_MANAGEMENT_5,
				    WM8994_AIF2DACL_ENA |
				    WM8994_AIF2DACR_ENA,
				    WM8994_AIF2DACL_ENA |
				    WM8994_AIF2DACR_ENA);
		break;

	case SND_SOC_DAPM_POST_PMU:
		for (i = 0; i < FUNC0(wm8994_vu_bits); i++)
			FUNC3(component, wm8994_vu_bits[i].reg,
				      FUNC1(component,
						   wm8994_vu_bits[i].reg));
		break;

	case SND_SOC_DAPM_PRE_PMD:
	case SND_SOC_DAPM_POST_PMD:
		FUNC2(component, WM8994_POWER_MANAGEMENT_5,
				    WM8994_AIF2DACL_ENA |
				    WM8994_AIF2DACR_ENA, 0);
		FUNC2(component, WM8994_POWER_MANAGEMENT_4,
				    WM8994_AIF2ADCL_ENA |
				    WM8994_AIF2ADCR_ENA, 0);

		val = FUNC1(component, WM8994_CLOCKING_1);
		if (val & WM8994_AIF1DSPCLK_ENA)
			val = WM8994_SYSDSPCLK_ENA;
		else
			val = 0;
		FUNC2(component, WM8994_CLOCKING_1,
				    WM8994_SYSDSPCLK_ENA |
				    WM8994_AIF2DSPCLK_ENA, val);
		break;
	}

	return 0;
}