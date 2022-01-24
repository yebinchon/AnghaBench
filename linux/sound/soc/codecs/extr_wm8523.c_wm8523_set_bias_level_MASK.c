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
struct wm8523_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8523_PSCTRL1 ; 
 int /*<<< orphan*/  WM8523_SYS_ENA_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_component*) ; 
 struct wm8523_priv* FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct wm8523_priv *wm8523 = FUNC7(component);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		/* Full power on */
		FUNC8(component, WM8523_PSCTRL1,
				    WM8523_SYS_ENA_MASK, 3);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC6(component) == SND_SOC_BIAS_OFF) {
			ret = FUNC5(FUNC0(wm8523->supplies),
						    wm8523->supplies);
			if (ret != 0) {
				FUNC1(component->dev,
					"Failed to enable supplies: %d\n",
					ret);
				return ret;
			}

			/* Sync back default/cached values */
			FUNC3(wm8523->regmap);

			/* Initial power up */
			FUNC8(component, WM8523_PSCTRL1,
					    WM8523_SYS_ENA_MASK, 1);

			FUNC2(100);
		}

		/* Power up to mute */
		FUNC8(component, WM8523_PSCTRL1,
				    WM8523_SYS_ENA_MASK, 2);

		break;

	case SND_SOC_BIAS_OFF:
		/* The chip runs through the power down sequence for us. */
		FUNC8(component, WM8523_PSCTRL1,
				    WM8523_SYS_ENA_MASK, 0);
		FUNC2(100);

		FUNC4(FUNC0(wm8523->supplies),
				       wm8523->supplies);
		break;
	}
	return 0;
}