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
struct wm8985_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int WM8985_BIASEN ; 
 int WM8985_BIASEN_MASK ; 
 int /*<<< orphan*/  WM8985_OUT4_TO_ADC ; 
 int /*<<< orphan*/  WM8985_OUTPUT_CTRL0 ; 
 int WM8985_POBCTRL ; 
 int WM8985_POBCTRL_MASK ; 
 int /*<<< orphan*/  WM8985_POWER_MANAGEMENT_1 ; 
 int /*<<< orphan*/  WM8985_POWER_MANAGEMENT_2 ; 
 int /*<<< orphan*/  WM8985_POWER_MANAGEMENT_3 ; 
 int WM8985_TSDEN ; 
 int WM8985_TSDEN_MASK ; 
 int WM8985_TSOPCTRL ; 
 int WM8985_TSOPCTRL_MASK ; 
 int WM8985_VMIDSEL_MASK ; 
 int WM8985_VMIDSEL_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct snd_soc_component*) ; 
 struct wm8985_priv* FUNC8 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	int ret;
	struct wm8985_priv *wm8985;

	wm8985 = FUNC8(component);
	switch (level) {
	case SND_SOC_BIAS_ON:
	case SND_SOC_BIAS_PREPARE:
		/* VMID at 75k */
		FUNC9(component, WM8985_POWER_MANAGEMENT_1,
				    WM8985_VMIDSEL_MASK,
				    1 << WM8985_VMIDSEL_SHIFT);
		break;
	case SND_SOC_BIAS_STANDBY:
		if (FUNC7(component) == SND_SOC_BIAS_OFF) {
			ret = FUNC6(FUNC0(wm8985->supplies),
						    wm8985->supplies);
			if (ret) {
				FUNC1(component->dev,
					"Failed to enable supplies: %d\n",
					ret);
				return ret;
			}

			FUNC4(wm8985->regmap);

			/* enable anti-pop features */
			FUNC9(component, WM8985_OUT4_TO_ADC,
					    WM8985_POBCTRL_MASK,
					    WM8985_POBCTRL);
			/* enable thermal shutdown */
			FUNC9(component, WM8985_OUTPUT_CTRL0,
					    WM8985_TSDEN_MASK, WM8985_TSDEN);
			FUNC9(component, WM8985_OUTPUT_CTRL0,
					    WM8985_TSOPCTRL_MASK,
					    WM8985_TSOPCTRL);
			/* enable BIASEN */
			FUNC9(component, WM8985_POWER_MANAGEMENT_1,
					    WM8985_BIASEN_MASK, WM8985_BIASEN);
			/* VMID at 75k */
			FUNC9(component, WM8985_POWER_MANAGEMENT_1,
					    WM8985_VMIDSEL_MASK,
					    1 << WM8985_VMIDSEL_SHIFT);
			FUNC2(500);
			/* disable anti-pop features */
			FUNC9(component, WM8985_OUT4_TO_ADC,
					    WM8985_POBCTRL_MASK, 0);
		}
		/* VMID at 300k */
		FUNC9(component, WM8985_POWER_MANAGEMENT_1,
				    WM8985_VMIDSEL_MASK,
				    2 << WM8985_VMIDSEL_SHIFT);
		break;
	case SND_SOC_BIAS_OFF:
		/* disable thermal shutdown */
		FUNC9(component, WM8985_OUTPUT_CTRL0,
				    WM8985_TSOPCTRL_MASK, 0);
		FUNC9(component, WM8985_OUTPUT_CTRL0,
				    WM8985_TSDEN_MASK, 0);
		/* disable VMIDSEL and BIASEN */
		FUNC9(component, WM8985_POWER_MANAGEMENT_1,
				    WM8985_VMIDSEL_MASK | WM8985_BIASEN_MASK,
				    0);
		FUNC10(component, WM8985_POWER_MANAGEMENT_1, 0);
		FUNC10(component, WM8985_POWER_MANAGEMENT_2, 0);
		FUNC10(component, WM8985_POWER_MANAGEMENT_3, 0);

		FUNC3(wm8985->regmap);

		FUNC5(FUNC0(wm8985->supplies),
				       wm8985->supplies);
		break;
	}

	return 0;
}