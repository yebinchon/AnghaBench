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
struct wm8955_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8955_ADDITIONAL_CONTROL_1 ; 
 int /*<<< orphan*/  WM8955_ADDITIONAL_CONTROL_3 ; 
 int /*<<< orphan*/  WM8955_POWER_MANAGEMENT_1 ; 
 int WM8955_VMIDSEL_MASK ; 
 int WM8955_VMIDSEL_SHIFT ; 
 int WM8955_VREF ; 
 int WM8955_VREF_SHIFT ; 
 int WM8955_VROI ; 
 int WM8955_VSEL_MASK ; 
 int WM8955_VSEL_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_component*) ; 
 struct wm8955_priv* FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct wm8955_priv *wm8955 = FUNC7(component);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		/* VMID resistance 2*50k */
		FUNC8(component, WM8955_POWER_MANAGEMENT_1,
				    WM8955_VMIDSEL_MASK,
				    0x1 << WM8955_VMIDSEL_SHIFT);

		/* Default bias current */
		FUNC8(component, WM8955_ADDITIONAL_CONTROL_1,
				    WM8955_VSEL_MASK,
				    0x2 << WM8955_VSEL_SHIFT);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC6(component) == SND_SOC_BIAS_OFF) {
			ret = FUNC5(FUNC0(wm8955->supplies),
						    wm8955->supplies);
			if (ret != 0) {
				FUNC1(component->dev,
					"Failed to enable supplies: %d\n",
					ret);
				return ret;
			}

			FUNC3(wm8955->regmap);

			/* Enable VREF and VMID */
			FUNC8(component, WM8955_POWER_MANAGEMENT_1,
					    WM8955_VREF |
					    WM8955_VMIDSEL_MASK,
					    WM8955_VREF |
					    0x3 << WM8955_VREF_SHIFT);

			/* Let VMID ramp */
			FUNC2(500);

			/* High resistance VROI to maintain outputs */
			FUNC8(component,
					    WM8955_ADDITIONAL_CONTROL_3,
					    WM8955_VROI, WM8955_VROI);
		}

		/* Maintain VMID with 2*250k */
		FUNC8(component, WM8955_POWER_MANAGEMENT_1,
				    WM8955_VMIDSEL_MASK,
				    0x2 << WM8955_VMIDSEL_SHIFT);

		/* Minimum bias current */
		FUNC8(component, WM8955_ADDITIONAL_CONTROL_1,
				    WM8955_VSEL_MASK, 0);
		break;

	case SND_SOC_BIAS_OFF:
		/* Low resistance VROI to help discharge */
		FUNC8(component,
				    WM8955_ADDITIONAL_CONTROL_3,
				    WM8955_VROI, 0);

		/* Turn off VMID and VREF */
		FUNC8(component, WM8955_POWER_MANAGEMENT_1,
				    WM8955_VREF |
				    WM8955_VMIDSEL_MASK, 0);

		FUNC4(FUNC0(wm8955->supplies),
				       wm8955->supplies);
		break;
	}
	return 0;
}