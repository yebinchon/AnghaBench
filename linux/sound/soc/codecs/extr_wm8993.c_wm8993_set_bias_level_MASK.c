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
struct TYPE_2__ {int /*<<< orphan*/  lineout2_diff; int /*<<< orphan*/  lineout1_diff; } ;
struct wm8993_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; TYPE_1__ pdata; } ;
struct snd_soc_component {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8993_ANTIPOP1 ; 
 int /*<<< orphan*/  WM8993_ANTIPOP2 ; 
 int WM8993_BIAS_ENA ; 
 int WM8993_BIAS_SRC ; 
 int WM8993_LINEOUT_VMID_BUF_ENA ; 
 int /*<<< orphan*/  WM8993_POWER_MANAGEMENT_1 ; 
 int /*<<< orphan*/  WM8993_POWER_MANAGEMENT_2 ; 
 int WM8993_STARTUP_BIAS_ENA ; 
 int WM8993_TSHUT_ENA ; 
 int WM8993_VMID_BUF_ENA ; 
 int WM8993_VMID_RAMP_MASK ; 
 int WM8993_VMID_SEL_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct snd_soc_component*) ; 
 struct wm8993_priv* FUNC8 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC12(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct wm8993_priv *wm8993 = FUNC8(component);
	int ret;

	FUNC10(component, level);

	switch (level) {
	case SND_SOC_BIAS_ON:
	case SND_SOC_BIAS_PREPARE:
		/* VMID=2*40k */
		FUNC9(component, WM8993_POWER_MANAGEMENT_1,
				    WM8993_VMID_SEL_MASK, 0x2);
		FUNC9(component, WM8993_POWER_MANAGEMENT_2,
				    WM8993_TSHUT_ENA, WM8993_TSHUT_ENA);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC7(component) == SND_SOC_BIAS_OFF) {
			ret = FUNC6(FUNC0(wm8993->supplies),
						    wm8993->supplies);
			if (ret != 0)
				return ret;

			FUNC2(wm8993->regmap, false);
			FUNC4(wm8993->regmap);

			FUNC11(component);

			/* Bring up VMID with fast soft start */
			FUNC9(component, WM8993_ANTIPOP2,
					    WM8993_STARTUP_BIAS_ENA |
					    WM8993_VMID_BUF_ENA |
					    WM8993_VMID_RAMP_MASK |
					    WM8993_BIAS_SRC,
					    WM8993_STARTUP_BIAS_ENA |
					    WM8993_VMID_BUF_ENA |
					    WM8993_VMID_RAMP_MASK |
					    WM8993_BIAS_SRC);

			/* If either line output is single ended we
			 * need the VMID buffer */
			if (!wm8993->pdata.lineout1_diff ||
			    !wm8993->pdata.lineout2_diff)
				FUNC9(component, WM8993_ANTIPOP1,
						 WM8993_LINEOUT_VMID_BUF_ENA,
						 WM8993_LINEOUT_VMID_BUF_ENA);

			/* VMID=2*40k */
			FUNC9(component, WM8993_POWER_MANAGEMENT_1,
					    WM8993_VMID_SEL_MASK |
					    WM8993_BIAS_ENA,
					    WM8993_BIAS_ENA | 0x2);
			FUNC1(32);

			/* Switch to normal bias */
			FUNC9(component, WM8993_ANTIPOP2,
					    WM8993_BIAS_SRC |
					    WM8993_STARTUP_BIAS_ENA, 0);
		}

		/* VMID=2*240k */
		FUNC9(component, WM8993_POWER_MANAGEMENT_1,
				    WM8993_VMID_SEL_MASK, 0x4);

		FUNC9(component, WM8993_POWER_MANAGEMENT_2,
				    WM8993_TSHUT_ENA, 0);
		break;

	case SND_SOC_BIAS_OFF:
		FUNC9(component, WM8993_ANTIPOP1,
				    WM8993_LINEOUT_VMID_BUF_ENA, 0);

		FUNC9(component, WM8993_POWER_MANAGEMENT_1,
				    WM8993_VMID_SEL_MASK | WM8993_BIAS_ENA,
				    0);

		FUNC9(component, WM8993_ANTIPOP2,
				    WM8993_STARTUP_BIAS_ENA |
				    WM8993_VMID_BUF_ENA |
				    WM8993_VMID_RAMP_MASK |
				    WM8993_BIAS_SRC, 0);

		FUNC2(wm8993->regmap, true);
		FUNC3(wm8993->regmap);

		FUNC5(FUNC0(wm8993->supplies),
				       wm8993->supplies);
		break;
	}

	return 0;
}