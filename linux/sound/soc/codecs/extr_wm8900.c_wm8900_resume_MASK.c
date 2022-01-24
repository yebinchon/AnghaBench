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
struct wm8900_priv {int fll_out; int fll_in; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct wm8900_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	struct wm8900_priv *wm8900 = FUNC3(component);
	int ret;

	FUNC4(component);

	ret = FUNC1(wm8900->regmap);
	if (ret != 0) {
		FUNC0(component->dev, "Failed to restore cache: %d\n", ret);
		return ret;
	}

	FUNC2(component, SND_SOC_BIAS_STANDBY);

	/* Restart the FLL? */
	if (wm8900->fll_out) {
		int fll_out = wm8900->fll_out;
		int fll_in  = wm8900->fll_in;

		wm8900->fll_in = 0;
		wm8900->fll_out = 0;

		ret = FUNC5(component, 0, fll_in, fll_out);
		if (ret != 0) {
			FUNC0(component->dev, "Failed to restart FLL\n");
			return ret;
		}
	}

	return 0;
}