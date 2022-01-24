#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct wm8400_priv {TYPE_1__* wm8400; } ;
struct snd_soc_component {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8400_ANTIPOP1 ; 
 int /*<<< orphan*/  WM8400_ANTIPOP2 ; 
 int WM8400_BUFDCOPEN ; 
 int WM8400_BUFIOEN ; 
 int WM8400_CODEC_ENA ; 
 int /*<<< orphan*/  WM8400_DAC_CTRL ; 
 int WM8400_DAC_MUTE ; 
 int WM8400_DIS_LLINE ; 
 int WM8400_DIS_LOUT ; 
 int WM8400_DIS_OUT3 ; 
 int WM8400_DIS_OUT4 ; 
 int WM8400_DIS_RLINE ; 
 int WM8400_DIS_ROUT ; 
 int WM8400_LOUT_ENA ; 
 int WM8400_OUT3_ENA ; 
 int WM8400_OUT4_ENA ; 
 int WM8400_POBCTRL ; 
 int /*<<< orphan*/  WM8400_POWER_MANAGEMENT_1 ; 
 int WM8400_ROUT_ENA ; 
 int WM8400_SOFTST ; 
 int WM8400_SPK_ENA ; 
 int WM8400_SYSCLK_ENA ; 
 int WM8400_VMID_MODE_MASK ; 
 int WM8400_VREF_ENA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * power ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct snd_soc_component*) ; 
 struct wm8400_priv* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct wm8400_priv *wm8400 = FUNC6(component);
	u16 val;
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		/* VMID=2*50k */
		val = FUNC7(component, WM8400_POWER_MANAGEMENT_1) &
			~WM8400_VMID_MODE_MASK;
		FUNC8(component, WM8400_POWER_MANAGEMENT_1, val | 0x2);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC5(component) == SND_SOC_BIAS_OFF) {
			ret = FUNC4(FUNC0(power),
						    &power[0]);
			if (ret != 0) {
				FUNC1(wm8400->wm8400->dev,
					"Failed to enable regulators: %d\n",
					ret);
				return ret;
			}

			FUNC8(component, WM8400_POWER_MANAGEMENT_1,
				     WM8400_CODEC_ENA | WM8400_SYSCLK_ENA);

			/* Enable POBCTRL, SOFT_ST, VMIDTOG and BUFDCOPEN */
			FUNC8(component, WM8400_ANTIPOP2, WM8400_SOFTST |
				     WM8400_BUFDCOPEN | WM8400_POBCTRL);

			FUNC2(50);

			/* Enable VREF & VMID at 2x50k */
			val = FUNC7(component, WM8400_POWER_MANAGEMENT_1);
			val |= 0x2 | WM8400_VREF_ENA;
			FUNC8(component, WM8400_POWER_MANAGEMENT_1, val);

			/* Enable BUFIOEN */
			FUNC8(component, WM8400_ANTIPOP2, WM8400_SOFTST |
				     WM8400_BUFDCOPEN | WM8400_POBCTRL |
				     WM8400_BUFIOEN);

			/* disable POBCTRL, SOFT_ST and BUFDCOPEN */
			FUNC8(component, WM8400_ANTIPOP2, WM8400_BUFIOEN);
		}

		/* VMID=2*300k */
		val = FUNC7(component, WM8400_POWER_MANAGEMENT_1) &
			~WM8400_VMID_MODE_MASK;
		FUNC8(component, WM8400_POWER_MANAGEMENT_1, val | 0x4);
		break;

	case SND_SOC_BIAS_OFF:
		/* Enable POBCTRL and SOFT_ST */
		FUNC8(component, WM8400_ANTIPOP2, WM8400_SOFTST |
			WM8400_POBCTRL | WM8400_BUFIOEN);

		/* Enable POBCTRL, SOFT_ST and BUFDCOPEN */
		FUNC8(component, WM8400_ANTIPOP2, WM8400_SOFTST |
			WM8400_BUFDCOPEN | WM8400_POBCTRL |
			WM8400_BUFIOEN);

		/* mute DAC */
		val = FUNC7(component, WM8400_DAC_CTRL);
		FUNC8(component, WM8400_DAC_CTRL, val | WM8400_DAC_MUTE);

		/* Enable any disabled outputs */
		val = FUNC7(component, WM8400_POWER_MANAGEMENT_1);
		val |= WM8400_SPK_ENA | WM8400_OUT3_ENA |
			WM8400_OUT4_ENA | WM8400_LOUT_ENA |
			WM8400_ROUT_ENA;
		FUNC8(component, WM8400_POWER_MANAGEMENT_1, val);

		/* Disable VMID */
		val &= ~WM8400_VMID_MODE_MASK;
		FUNC8(component, WM8400_POWER_MANAGEMENT_1, val);

		FUNC2(300);

		/* Enable all output discharge bits */
		FUNC8(component, WM8400_ANTIPOP1, WM8400_DIS_LLINE |
			WM8400_DIS_RLINE | WM8400_DIS_OUT3 |
			WM8400_DIS_OUT4 | WM8400_DIS_LOUT |
			WM8400_DIS_ROUT);

		/* Disable VREF */
		val &= ~WM8400_VREF_ENA;
		FUNC8(component, WM8400_POWER_MANAGEMENT_1, val);

		/* disable POBCTRL, SOFT_ST and BUFDCOPEN */
		FUNC8(component, WM8400_ANTIPOP2, 0x0);

		ret = FUNC3(FUNC0(power),
					     &power[0]);
		if (ret != 0)
			return ret;

		break;
	}

	return 0;
}