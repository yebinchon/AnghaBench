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
struct wm8904_priv {int /*<<< orphan*/  mclk; int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8904_BIAS_CONTROL_0 ; 
 int WM8904_BIAS_ENA ; 
 int WM8904_ISEL_MASK ; 
 int WM8904_ISEL_SHIFT ; 
 int /*<<< orphan*/  WM8904_VMID_CONTROL_0 ; 
 int WM8904_VMID_ENA ; 
 int WM8904_VMID_RES_MASK ; 
 int WM8904_VMID_RES_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct snd_soc_component*) ; 
 struct wm8904_priv* FUNC11 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC13(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct wm8904_priv *wm8904 = FUNC11(component);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		/* VMID resistance 2*50k */
		FUNC12(component, WM8904_VMID_CONTROL_0,
				    WM8904_VMID_RES_MASK,
				    0x1 << WM8904_VMID_RES_SHIFT);

		/* Normal bias current */
		FUNC12(component, WM8904_BIAS_CONTROL_0,
				    WM8904_ISEL_MASK, 2 << WM8904_ISEL_SHIFT);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC10(component) == SND_SOC_BIAS_OFF) {
			ret = FUNC9(FUNC0(wm8904->supplies),
						    wm8904->supplies);
			if (ret != 0) {
				FUNC3(component->dev,
					"Failed to enable supplies: %d\n",
					ret);
				return ret;
			}

			ret = FUNC2(wm8904->mclk);
			if (ret) {
				FUNC3(component->dev,
					"Failed to enable MCLK: %d\n", ret);
				FUNC8(FUNC0(wm8904->supplies),
						       wm8904->supplies);
				return ret;
			}

			FUNC5(wm8904->regmap, false);
			FUNC7(wm8904->regmap);

			/* Enable bias */
			FUNC12(component, WM8904_BIAS_CONTROL_0,
					    WM8904_BIAS_ENA, WM8904_BIAS_ENA);

			/* Enable VMID, VMID buffering, 2*5k resistance */
			FUNC12(component, WM8904_VMID_CONTROL_0,
					    WM8904_VMID_ENA |
					    WM8904_VMID_RES_MASK,
					    WM8904_VMID_ENA |
					    0x3 << WM8904_VMID_RES_SHIFT);

			/* Let VMID ramp */
			FUNC4(1);
		}

		/* Maintain VMID with 2*250k */
		FUNC12(component, WM8904_VMID_CONTROL_0,
				    WM8904_VMID_RES_MASK,
				    0x2 << WM8904_VMID_RES_SHIFT);

		/* Bias current *0.5 */
		FUNC12(component, WM8904_BIAS_CONTROL_0,
				    WM8904_ISEL_MASK, 0);
		break;

	case SND_SOC_BIAS_OFF:
		/* Turn off VMID */
		FUNC12(component, WM8904_VMID_CONTROL_0,
				    WM8904_VMID_RES_MASK | WM8904_VMID_ENA, 0);

		/* Stop bias generation */
		FUNC12(component, WM8904_BIAS_CONTROL_0,
				    WM8904_BIAS_ENA, 0);

		FUNC5(wm8904->regmap, true);
		FUNC6(wm8904->regmap);

		FUNC8(FUNC0(wm8904->supplies),
				       wm8904->supplies);
		FUNC1(wm8904->mclk);
		break;
	}
	return 0;
}