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
struct wm9081_priv {int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM9081_ANTI_POP_CONTROL ; 
 int /*<<< orphan*/  WM9081_BIAS_CONTROL_1 ; 
 int WM9081_BIAS_ENA ; 
 int WM9081_BIAS_SRC ; 
 int WM9081_LINEOUT_DISCH ; 
 int WM9081_STBY_BIAS_ENA ; 
 int /*<<< orphan*/  WM9081_VMID_CONTROL ; 
 int WM9081_VMID_RAMP ; 
 int WM9081_VMID_SEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_component*) ; 
 struct wm9081_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct wm9081_priv *wm9081 = FUNC4(component);

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		/* VMID=2*40k */
		FUNC5(component, WM9081_VMID_CONTROL,
				    WM9081_VMID_SEL_MASK, 0x2);

		/* Normal bias current */
		FUNC5(component, WM9081_BIAS_CONTROL_1,
				    WM9081_STBY_BIAS_ENA, 0);
		break;

	case SND_SOC_BIAS_STANDBY:
		/* Initial cold start */
		if (FUNC3(component) == SND_SOC_BIAS_OFF) {
			FUNC1(wm9081->regmap, false);
			FUNC2(wm9081->regmap);

			/* Disable LINEOUT discharge */
			FUNC5(component, WM9081_ANTI_POP_CONTROL,
					    WM9081_LINEOUT_DISCH, 0);

			/* Select startup bias source */
			FUNC5(component, WM9081_BIAS_CONTROL_1,
					    WM9081_BIAS_SRC | WM9081_BIAS_ENA,
					    WM9081_BIAS_SRC | WM9081_BIAS_ENA);

			/* VMID 2*4k; Soft VMID ramp enable */
			FUNC5(component, WM9081_VMID_CONTROL,
					    WM9081_VMID_RAMP |
					    WM9081_VMID_SEL_MASK,
					    WM9081_VMID_RAMP | 0x6);

			FUNC0(100);

			/* Normal bias enable & soft start off */
			FUNC5(component, WM9081_VMID_CONTROL,
					    WM9081_VMID_RAMP, 0);

			/* Standard bias source */
			FUNC5(component, WM9081_BIAS_CONTROL_1,
					    WM9081_BIAS_SRC, 0);
		}

		/* VMID 2*240k */
		FUNC5(component, WM9081_VMID_CONTROL,
				    WM9081_VMID_SEL_MASK, 0x04);

		/* Standby bias current on */
		FUNC5(component, WM9081_BIAS_CONTROL_1,
				    WM9081_STBY_BIAS_ENA,
				    WM9081_STBY_BIAS_ENA);
		break;

	case SND_SOC_BIAS_OFF:
		/* Startup bias source and disable bias */
		FUNC5(component, WM9081_BIAS_CONTROL_1,
				    WM9081_BIAS_SRC | WM9081_BIAS_ENA,
				    WM9081_BIAS_SRC);

		/* Disable VMID with soft ramping */
		FUNC5(component, WM9081_VMID_CONTROL,
				    WM9081_VMID_RAMP | WM9081_VMID_SEL_MASK,
				    WM9081_VMID_RAMP);

		/* Actively discharge LINEOUT */
		FUNC5(component, WM9081_ANTI_POP_CONTROL,
				    WM9081_LINEOUT_DISCH,
				    WM9081_LINEOUT_DISCH);

		FUNC1(wm9081->regmap, true);
		break;
	}

	return 0;
}