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
struct wm9713_priv {struct regmap* ac97; TYPE_1__* mfd_pdata; } ;
struct snd_soc_component {int dummy; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; struct regmap* ac97; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_CD ; 
 int /*<<< orphan*/  CONFIG_SND_SOC_AC97_BUS ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  WM9713_VENDOR_ID ; 
 int /*<<< orphan*/  WM9713_VENDOR_ID_MASK ; 
 struct regmap* FUNC3 (struct regmap*,int /*<<< orphan*/ *) ; 
 struct wm9713_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,struct regmap*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct regmap*) ; 
 struct regmap* FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm9713_regmap_config ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component)
{
	struct wm9713_priv *wm9713 = FUNC4(component);
	struct regmap *regmap = NULL;

	if (wm9713->mfd_pdata) {
		wm9713->ac97 = wm9713->mfd_pdata->ac97;
		regmap = wm9713->mfd_pdata->regmap;
	} else if (FUNC0(CONFIG_SND_SOC_AC97_BUS)) {
		wm9713->ac97 = FUNC8(component, WM9713_VENDOR_ID,
						      WM9713_VENDOR_ID_MASK);
		if (FUNC1(wm9713->ac97))
			return FUNC2(wm9713->ac97);
		regmap = FUNC3(wm9713->ac97, &wm9713_regmap_config);
		if (FUNC1(regmap)) {
			FUNC7(wm9713->ac97);
			return FUNC2(regmap);
		}
	} else {
		return -ENXIO;
	}

	FUNC5(component, regmap);

	/* unmute the adc - move to kcontrol */
	FUNC6(component, AC97_CD, 0x7fff, 0x0000);

	return 0;
}