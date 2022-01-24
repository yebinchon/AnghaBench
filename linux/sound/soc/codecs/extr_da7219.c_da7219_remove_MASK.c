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
struct snd_soc_component {int dummy; } ;
struct da7219_priv {int /*<<< orphan*/  supplies; scalar_t__* dai_clks_lookup; } ;

/* Variables and functions */
 int DA7219_DAI_NUM_CLKS ; 
 int /*<<< orphan*/  DA7219_NUM_SUPPLIES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct da7219_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *component)
{
	struct da7219_priv *da7219 = FUNC3(component);
#ifdef CONFIG_COMMON_CLK
	int i;
#endif

	FUNC1(component);

#ifdef CONFIG_COMMON_CLK
	for (i = DA7219_DAI_NUM_CLKS - 1; i >= 0; --i) {
		if (da7219->dai_clks_lookup[i])
			clkdev_drop(da7219->dai_clks_lookup[i]);
	}
#endif

	/* Supplies */
	FUNC2(DA7219_NUM_SUPPLIES, da7219->supplies);
}