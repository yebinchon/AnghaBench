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
struct wm8991_priv {int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8991_ANTIPOP1 ; 
 int /*<<< orphan*/  WM8991_ANTIPOP2 ; 
 int WM8991_BUFDCOPEN ; 
 int WM8991_BUFIOEN ; 
 int /*<<< orphan*/  WM8991_DAC_CTRL ; 
 int WM8991_DAC_MUTE ; 
 int WM8991_DIS_LLINE ; 
 int WM8991_DIS_LOUT ; 
 int WM8991_DIS_OUT3 ; 
 int WM8991_DIS_OUT4 ; 
 int WM8991_DIS_RLINE ; 
 int WM8991_DIS_ROUT ; 
 int WM8991_POBCTRL ; 
 int /*<<< orphan*/  WM8991_POWER_MANAGEMENT_1 ; 
 int WM8991_SOFTST ; 
 int WM8991_VMIDTOG ; 
 int WM8991_VMID_MODE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_component*) ; 
 struct wm8991_priv* FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct wm8991_priv *wm8991 = FUNC4(component);
	u16 val;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		/* VMID=2*50k */
		val = FUNC5(component, WM8991_POWER_MANAGEMENT_1) &
		      ~WM8991_VMID_MODE_MASK;
		FUNC6(component, WM8991_POWER_MANAGEMENT_1, val | 0x2);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC3(component) == SND_SOC_BIAS_OFF) {
			FUNC2(wm8991->regmap);
			/* Enable all output discharge bits */
			FUNC6(component, WM8991_ANTIPOP1, WM8991_DIS_LLINE |
				      WM8991_DIS_RLINE | WM8991_DIS_OUT3 |
				      WM8991_DIS_OUT4 | WM8991_DIS_LOUT |
				      WM8991_DIS_ROUT);

			/* Enable POBCTRL, SOFT_ST, VMIDTOG and BUFDCOPEN */
			FUNC6(component, WM8991_ANTIPOP2, WM8991_SOFTST |
				      WM8991_BUFDCOPEN | WM8991_POBCTRL |
				      WM8991_VMIDTOG);

			/* Delay to allow output caps to discharge */
			FUNC0(300);

			/* Disable VMIDTOG */
			FUNC6(component, WM8991_ANTIPOP2, WM8991_SOFTST |
				      WM8991_BUFDCOPEN | WM8991_POBCTRL);

			/* disable all output discharge bits */
			FUNC6(component, WM8991_ANTIPOP1, 0);

			/* Enable outputs */
			FUNC6(component, WM8991_POWER_MANAGEMENT_1, 0x1b00);

			FUNC0(50);

			/* Enable VMID at 2x50k */
			FUNC6(component, WM8991_POWER_MANAGEMENT_1, 0x1f02);

			FUNC0(100);

			/* Enable VREF */
			FUNC6(component, WM8991_POWER_MANAGEMENT_1, 0x1f03);

			FUNC0(600);

			/* Enable BUFIOEN */
			FUNC6(component, WM8991_ANTIPOP2, WM8991_SOFTST |
				      WM8991_BUFDCOPEN | WM8991_POBCTRL |
				      WM8991_BUFIOEN);

			/* Disable outputs */
			FUNC6(component, WM8991_POWER_MANAGEMENT_1, 0x3);

			/* disable POBCTRL, SOFT_ST and BUFDCOPEN */
			FUNC6(component, WM8991_ANTIPOP2, WM8991_BUFIOEN);
		}

		/* VMID=2*250k */
		val = FUNC5(component, WM8991_POWER_MANAGEMENT_1) &
		      ~WM8991_VMID_MODE_MASK;
		FUNC6(component, WM8991_POWER_MANAGEMENT_1, val | 0x4);
		break;

	case SND_SOC_BIAS_OFF:
		/* Enable POBCTRL and SOFT_ST */
		FUNC6(component, WM8991_ANTIPOP2, WM8991_SOFTST |
			      WM8991_POBCTRL | WM8991_BUFIOEN);

		/* Enable POBCTRL, SOFT_ST and BUFDCOPEN */
		FUNC6(component, WM8991_ANTIPOP2, WM8991_SOFTST |
			      WM8991_BUFDCOPEN | WM8991_POBCTRL |
			      WM8991_BUFIOEN);

		/* mute DAC */
		val = FUNC5(component, WM8991_DAC_CTRL);
		FUNC6(component, WM8991_DAC_CTRL, val | WM8991_DAC_MUTE);

		/* Enable any disabled outputs */
		FUNC6(component, WM8991_POWER_MANAGEMENT_1, 0x1f03);

		/* Disable VMID */
		FUNC6(component, WM8991_POWER_MANAGEMENT_1, 0x1f01);

		FUNC0(300);

		/* Enable all output discharge bits */
		FUNC6(component, WM8991_ANTIPOP1, WM8991_DIS_LLINE |
			      WM8991_DIS_RLINE | WM8991_DIS_OUT3 |
			      WM8991_DIS_OUT4 | WM8991_DIS_LOUT |
			      WM8991_DIS_ROUT);

		/* Disable VREF */
		FUNC6(component, WM8991_POWER_MANAGEMENT_1, 0x0);

		/* disable POBCTRL, SOFT_ST and BUFDCOPEN */
		FUNC6(component, WM8991_ANTIPOP2, 0x0);
		FUNC1(wm8991->regmap);
		break;
	}

	return 0;
}