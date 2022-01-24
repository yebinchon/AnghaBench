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
struct wm8737_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8737_MISC_BIAS_CONTROL ; 
 int /*<<< orphan*/  WM8737_POWER_MANAGEMENT ; 
 int WM8737_VMIDSEL_MASK ; 
 int WM8737_VMIDSEL_SHIFT ; 
 int WM8737_VMID_MASK ; 
 int WM8737_VREF_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_component*) ; 
 struct wm8737_priv* FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct wm8737_priv *wm8737 = FUNC7(component);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		/* VMID at 2*75k */
		FUNC8(component, WM8737_MISC_BIAS_CONTROL,
				    WM8737_VMIDSEL_MASK, 0);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC6(component) == SND_SOC_BIAS_OFF) {
			ret = FUNC5(FUNC0(wm8737->supplies),
						    wm8737->supplies);
			if (ret != 0) {
				FUNC1(component->dev,
					"Failed to enable supplies: %d\n",
					ret);
				return ret;
			}

			FUNC3(wm8737->regmap);

			/* Fast VMID ramp at 2*2.5k */
			FUNC8(component, WM8737_MISC_BIAS_CONTROL,
					    WM8737_VMIDSEL_MASK,
					    2 << WM8737_VMIDSEL_SHIFT);

			/* Bring VMID up */
			FUNC8(component, WM8737_POWER_MANAGEMENT,
					    WM8737_VMID_MASK |
					    WM8737_VREF_MASK,
					    WM8737_VMID_MASK |
					    WM8737_VREF_MASK);

			FUNC2(500);
		}

		/* VMID at 2*300k */
		FUNC8(component, WM8737_MISC_BIAS_CONTROL,
				    WM8737_VMIDSEL_MASK,
				    1 << WM8737_VMIDSEL_SHIFT);

		break;

	case SND_SOC_BIAS_OFF:
		FUNC8(component, WM8737_POWER_MANAGEMENT,
				    WM8737_VMID_MASK | WM8737_VREF_MASK, 0);

		FUNC4(FUNC0(wm8737->supplies),
				       wm8737->supplies);
		break;
	}

	return 0;
}