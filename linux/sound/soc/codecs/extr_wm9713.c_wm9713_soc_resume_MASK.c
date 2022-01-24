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
struct wm9713_priv {scalar_t__ pll_in; int /*<<< orphan*/  ac97; } ;
struct snd_soc_component {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int /*<<< orphan*/  WM9713_VENDOR_ID ; 
 int /*<<< orphan*/  WM9713_VENDOR_ID_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct wm9713_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	struct wm9713_priv *wm9713 = FUNC4(component);
	int ret;

	ret = FUNC1(wm9713->ac97, true, WM9713_VENDOR_ID,
		WM9713_VENDOR_ID_MASK);
	if (ret < 0)
		return ret;

	FUNC3(component, SND_SOC_BIAS_STANDBY);

	/* do we need to re-start the PLL ? */
	if (wm9713->pll_in)
		FUNC5(component, 0, wm9713->pll_in, 0);

	/* only synchronise the codec if warm reset failed */
	if (ret == 0) {
		FUNC0(component->regmap);
		FUNC2(component);
	}

	return ret;
}