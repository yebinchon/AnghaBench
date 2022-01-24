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
struct wm8960_priv {int /*<<< orphan*/  regmap; int /*<<< orphan*/  mclk; int /*<<< orphan*/  clk_id; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8960_APOP1 ; 
 int WM8960_BUFDCOPEN ; 
 int WM8960_BUFIOEN ; 
 int WM8960_POBCTRL ; 
 int /*<<< orphan*/  WM8960_POWER1 ; 
 int /*<<< orphan*/  WM8960_POWER2 ; 
 int WM8960_SOFT_ST ; 
 int /*<<< orphan*/  WM8960_SYSCLK_AUTO ; 
 int WM8960_VREF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_component*) ; 
 struct wm8960_priv* FUNC7 (struct snd_soc_component*) ; 
 int FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct snd_soc_component *component,
				      enum snd_soc_bias_level level)
{
	struct wm8960_priv *wm8960 = FUNC7(component);
	u16 pm2 = FUNC8(component, WM8960_POWER2);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		switch (FUNC6(component)) {
		case SND_SOC_BIAS_STANDBY:
			if (!FUNC0(wm8960->mclk)) {
				ret = FUNC2(wm8960->mclk);
				if (ret) {
					FUNC3(component->dev,
						"Failed to enable MCLK: %d\n",
						ret);
					return ret;
				}
			}

			ret = FUNC11(component);
			if (ret)
				return ret;

			/* Set VMID to 2x50k */
			FUNC9(component, WM8960_POWER1, 0x180, 0x80);
			break;

		case SND_SOC_BIAS_ON:
			/*
			 * If it's sysclk auto mode, and the pll is enabled,
			 * disable the pll
			 */
			if (wm8960->clk_id == WM8960_SYSCLK_AUTO && (pm2 & 0x1))
				FUNC12(component, 0, 0);

			if (!FUNC0(wm8960->mclk))
				FUNC1(wm8960->mclk);
			break;

		default:
			break;
		}

		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC6(component) == SND_SOC_BIAS_OFF) {
			FUNC5(wm8960->regmap);

			/* Enable anti-pop features */
			FUNC10(component, WM8960_APOP1,
				      WM8960_POBCTRL | WM8960_SOFT_ST |
				      WM8960_BUFDCOPEN | WM8960_BUFIOEN);

			/* Enable & ramp VMID at 2x50k */
			FUNC9(component, WM8960_POWER1, 0x80, 0x80);
			FUNC4(100);

			/* Enable VREF */
			FUNC9(component, WM8960_POWER1, WM8960_VREF,
					    WM8960_VREF);

			/* Disable anti-pop features */
			FUNC10(component, WM8960_APOP1, WM8960_BUFIOEN);
		}

		/* Set VMID to 2x250k */
		FUNC9(component, WM8960_POWER1, 0x180, 0x100);
		break;

	case SND_SOC_BIAS_OFF:
		/* Enable anti-pop features */
		FUNC10(component, WM8960_APOP1,
			     WM8960_POBCTRL | WM8960_SOFT_ST |
			     WM8960_BUFDCOPEN | WM8960_BUFIOEN);

		/* Disable VMID and VREF, let them discharge */
		FUNC10(component, WM8960_POWER1, 0);
		FUNC4(600);
		break;
	}

	return 0;
}