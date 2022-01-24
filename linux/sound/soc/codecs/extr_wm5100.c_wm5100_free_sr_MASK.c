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
struct wm5100_priv {int /*<<< orphan*/ * sr_ref; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int WM5100_SAMPLE_RATE_1_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct wm5100_priv* FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*,int) ; 
 int* wm5100_sr_code ; 
 int* wm5100_sr_regs ; 

__attribute__((used)) static void FUNC6(struct snd_soc_component *component, int rate)
{
	struct wm5100_priv *wm5100 = FUNC4(component);
	int i, sr_code;

	for (i = 0; i < FUNC0(wm5100_sr_code); i++)
		if (wm5100_sr_code[i] == rate)
			break;
	if (i == FUNC0(wm5100_sr_code)) {
		FUNC2(component->dev, "Unsupported sample rate: %dHz\n", rate);
		return;
	}
	sr_code = wm5100_sr_code[i];

	for (i = 0; i < FUNC0(wm5100_sr_regs); i++) {
		if (!wm5100->sr_ref[i])
			continue;

		if ((FUNC5(component, wm5100_sr_regs[i]) &
		     WM5100_SAMPLE_RATE_1_MASK) == sr_code)
			break;
	}
	if (i < FUNC0(wm5100_sr_regs)) {
		wm5100->sr_ref[i]--;
		FUNC1(component->dev, "Dereference SR %dHz, count now %d\n",
			rate, wm5100->sr_ref[i]);
	} else {
		FUNC3(component->dev, "Freeing unreferenced sample rate %dHz\n",
			 rate);
	}
}