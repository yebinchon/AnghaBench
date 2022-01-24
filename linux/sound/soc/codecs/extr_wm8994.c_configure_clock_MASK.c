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
struct wm8994_priv {scalar_t__* aifclk; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8994_CLOCKING_1 ; 
 int WM8994_SYSCLK_SRC ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int) ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_soc_component*) ; 
 struct wm8994_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC1(component);
	struct wm8994_priv *wm8994 = FUNC2(component);
	int change, new;

	/* Bring up the AIF clocks first */
	FUNC0(component, 0);
	FUNC0(component, 1);

	/* Then switch CLK_SYS over to the higher of them; a change
	 * can only happen as a result of a clocking change which can
	 * only be made outside of DAPM so we can safely redo the
	 * clocking.
	 */

	/* If they're equal it doesn't matter which is used */
	if (wm8994->aifclk[0] == wm8994->aifclk[1]) {
		FUNC5(component);
		return 0;
	}

	if (wm8994->aifclk[0] < wm8994->aifclk[1])
		new = WM8994_SYSCLK_SRC;
	else
		new = 0;

	change = FUNC3(component, WM8994_CLOCKING_1,
				     WM8994_SYSCLK_SRC, new);
	if (change)
		FUNC4(dapm);

	FUNC5(component);

	return 0;
}