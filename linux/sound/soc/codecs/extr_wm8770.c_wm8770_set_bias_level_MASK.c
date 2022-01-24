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
struct wm8770_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8770_PWDNCTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_soc_component*) ; 
 struct wm8770_priv* FUNC6 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	int ret;
	struct wm8770_priv *wm8770;

	wm8770 = FUNC6(component);

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;
	case SND_SOC_BIAS_PREPARE:
		break;
	case SND_SOC_BIAS_STANDBY:
		if (FUNC5(component) == SND_SOC_BIAS_OFF) {
			ret = FUNC4(FUNC0(wm8770->supplies),
						    wm8770->supplies);
			if (ret) {
				FUNC1(component->dev,
					"Failed to enable supplies: %d\n",
					ret);
				return ret;
			}

			FUNC2(wm8770->regmap);

			/* global powerup */
			FUNC7(component, WM8770_PWDNCTRL, 0);
		}
		break;
	case SND_SOC_BIAS_OFF:
		/* global powerdown */
		FUNC7(component, WM8770_PWDNCTRL, 1);
		FUNC3(FUNC0(wm8770->supplies),
				       wm8770->supplies);
		break;
	}

	return 0;
}