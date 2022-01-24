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
struct wm8978_priv {scalar_t__ f_pllout; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int /*<<< orphan*/  WM8978_POWER_MANAGEMENT_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct wm8978_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	struct wm8978_priv *wm8978 = FUNC2(component);

	/* Sync reg_cache with the hardware */
	FUNC0(wm8978->regmap);

	FUNC1(component, SND_SOC_BIAS_STANDBY);

	if (wm8978->f_pllout)
		/* Switch PLL on */
		FUNC3(component, WM8978_POWER_MANAGEMENT_1, 0x20, 0x20);

	return 0;
}