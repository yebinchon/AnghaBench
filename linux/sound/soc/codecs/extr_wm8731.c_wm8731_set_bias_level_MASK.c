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
struct wm8731_priv {int /*<<< orphan*/  regmap; int /*<<< orphan*/  supplies; int /*<<< orphan*/  mclk; } ;
struct snd_soc_component {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8731_PWR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct snd_soc_component*) ; 
 struct wm8731_priv* FUNC8 (struct snd_soc_component*) ; 
 int FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct wm8731_priv *wm8731 = FUNC8(component);
	int ret;
	u16 reg;

	switch (level) {
	case SND_SOC_BIAS_ON:
		if (wm8731->mclk) {
			ret = FUNC2(wm8731->mclk);
			if (ret)
				return ret;
		}
		break;
	case SND_SOC_BIAS_PREPARE:
		break;
	case SND_SOC_BIAS_STANDBY:
		if (FUNC7(component) == SND_SOC_BIAS_OFF) {
			ret = FUNC6(FUNC0(wm8731->supplies),
						    wm8731->supplies);
			if (ret != 0)
				return ret;

			FUNC4(wm8731->regmap);
		}

		/* Clear PWROFF, gate CLKOUT, everything else as-is */
		reg = FUNC9(component, WM8731_PWR) & 0xff7f;
		FUNC10(component, WM8731_PWR, reg | 0x0040);
		break;
	case SND_SOC_BIAS_OFF:
		if (wm8731->mclk)
			FUNC1(wm8731->mclk);
		FUNC10(component, WM8731_PWR, 0xffff);
		FUNC5(FUNC0(wm8731->supplies),
				       wm8731->supplies);
		FUNC3(wm8731->regmap);
		break;
	}
	return 0;
}