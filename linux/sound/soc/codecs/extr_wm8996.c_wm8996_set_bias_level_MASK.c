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
struct TYPE_2__ {int /*<<< orphan*/  ldo_ena; } ;
struct wm8996_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; TYPE_1__ pdata; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8996_MICB1_MODE ; 
 int /*<<< orphan*/  WM8996_MICB2_MODE ; 
 int /*<<< orphan*/  WM8996_MICBIAS_1 ; 
 int /*<<< orphan*/  WM8996_MICBIAS_2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snd_soc_component*) ; 
 struct wm8996_priv* FUNC9 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct wm8996_priv *wm8996 = FUNC9(component);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;
	case SND_SOC_BIAS_PREPARE:
		/* Put the MICBIASes into regulating mode */
		FUNC10(component, WM8996_MICBIAS_1,
				    WM8996_MICB1_MODE, 0);
		FUNC10(component, WM8996_MICBIAS_2,
				    WM8996_MICB2_MODE, 0);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC8(component) == SND_SOC_BIAS_OFF) {
			ret = FUNC7(FUNC0(wm8996->supplies),
						    wm8996->supplies);
			if (ret != 0) {
				FUNC1(component->dev,
					"Failed to enable supplies: %d\n",
					ret);
				return ret;
			}

			if (wm8996->pdata.ldo_ena >= 0) {
				FUNC2(wm8996->pdata.ldo_ena,
							1);
				FUNC3(5);
			}

			FUNC4(wm8996->regmap, false);
			FUNC5(wm8996->regmap);
		}

		/* Bypass the MICBIASes for lowest power */
		FUNC10(component, WM8996_MICBIAS_1,
				    WM8996_MICB1_MODE, WM8996_MICB1_MODE);
		FUNC10(component, WM8996_MICBIAS_2,
				    WM8996_MICB2_MODE, WM8996_MICB2_MODE);
		break;

	case SND_SOC_BIAS_OFF:
		FUNC4(wm8996->regmap, true);
		if (wm8996->pdata.ldo_ena >= 0) {
			FUNC2(wm8996->pdata.ldo_ena, 0);
			FUNC4(wm8996->regmap, true);
		}
		FUNC6(FUNC0(wm8996->supplies),
				       wm8996->supplies);
		break;
	}

	return 0;
}