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
struct wm8955_priv {scalar_t__ fs; scalar_t__ deemph; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  WM8955_DAC_CONTROL ; 
 int /*<<< orphan*/  WM8955_DEEMPH_MASK ; 
 int WM8955_DEEMPH_SHIFT ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__* deemph_settings ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct wm8955_priv* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct wm8955_priv *wm8955 = FUNC3(component);
	int val, i, best;

	/* If we're using deemphasis select the nearest available sample
	 * rate.
	 */
	if (wm8955->deemph) {
		best = 1;
		for (i = 2; i < FUNC0(deemph_settings); i++) {
			if (FUNC1(deemph_settings[i] - wm8955->fs) <
			    FUNC1(deemph_settings[best] - wm8955->fs))
				best = i;
		}

		val = best << WM8955_DEEMPH_SHIFT;
	} else {
		val = 0;
	}

	FUNC2(component->dev, "Set deemphasis %d\n", val);

	return FUNC4(component, WM8955_DAC_CONTROL,
				   WM8955_DEEMPH_MASK, val);
}