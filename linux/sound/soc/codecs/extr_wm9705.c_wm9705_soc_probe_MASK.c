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
struct wm9705_priv {struct regmap* ac97; TYPE_1__* mfd_pdata; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; struct regmap* ac97; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SND_SOC_AC97_BUS ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  WM9705_VENDOR_ID ; 
 int /*<<< orphan*/  WM9705_VENDOR_ID_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct regmap* FUNC4 (struct regmap*,int /*<<< orphan*/ *) ; 
 struct wm9705_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,struct regmap*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,struct regmap*) ; 
 int /*<<< orphan*/  FUNC8 (struct regmap*) ; 
 struct regmap* FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm9705_regmap_config ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *component)
{
	struct wm9705_priv *wm9705 = FUNC5(component);
	struct regmap *regmap;

	if (wm9705->mfd_pdata) {
		wm9705->ac97 = wm9705->mfd_pdata->ac97;
		regmap = wm9705->mfd_pdata->regmap;
	} else if (FUNC0(CONFIG_SND_SOC_AC97_BUS)) {
		wm9705->ac97 = FUNC9(component, WM9705_VENDOR_ID,
						      WM9705_VENDOR_ID_MASK);
		if (FUNC1(wm9705->ac97)) {
			FUNC3(component->dev, "Failed to register AC97 codec\n");
			return FUNC2(wm9705->ac97);
		}

		regmap = FUNC4(wm9705->ac97, &wm9705_regmap_config);
		if (FUNC1(regmap)) {
			FUNC8(wm9705->ac97);
			return FUNC2(regmap);
		}
	} else {
		return -ENXIO;
	}

	FUNC7(component, wm9705->ac97);
	FUNC6(component, regmap);

	return 0;
}