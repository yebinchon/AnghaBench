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
struct wm9712_priv {struct regmap* ac97; TYPE_1__* mfd_pdata; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; struct regmap* ac97; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_VIDEO ; 
 int /*<<< orphan*/  CONFIG_SND_SOC_AC97_BUS ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  WM9712_VENDOR_ID ; 
 int /*<<< orphan*/  WM9712_VENDOR_ID_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct regmap* FUNC4 (struct regmap*,int /*<<< orphan*/ *) ; 
 struct wm9712_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,struct regmap*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct regmap*) ; 
 struct regmap* FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm9712_regmap_config ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *component)
{
	struct wm9712_priv *wm9712 = FUNC5(component);
	struct regmap *regmap;

	if (wm9712->mfd_pdata) {
		wm9712->ac97 = wm9712->mfd_pdata->ac97;
		regmap = wm9712->mfd_pdata->regmap;
	} else if (FUNC0(CONFIG_SND_SOC_AC97_BUS)) {
		int ret;

		wm9712->ac97 = FUNC9(component, WM9712_VENDOR_ID,
						      WM9712_VENDOR_ID_MASK);
		if (FUNC1(wm9712->ac97)) {
			ret = FUNC2(wm9712->ac97);
			FUNC3(component->dev,
				"Failed to register AC97 codec: %d\n", ret);
			return ret;
		}

		regmap = FUNC4(wm9712->ac97, &wm9712_regmap_config);
		if (FUNC1(regmap)) {
			FUNC8(wm9712->ac97);
			return FUNC2(regmap);
		}
	} else {
		return -ENXIO;
	}

	FUNC6(component, regmap);

	/* set alc mux to none */
	FUNC7(component, AC97_VIDEO, 0x3000, 0x3000);

	return 0;
}