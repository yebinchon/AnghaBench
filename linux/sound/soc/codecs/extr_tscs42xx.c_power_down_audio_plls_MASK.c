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
struct tscs42xx {int /*<<< orphan*/  pll_lock; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RM_PLLCTL1C_PDB_PLL1 ; 
 int /*<<< orphan*/  RM_PLLCTL1C_PDB_PLL2 ; 
 int /*<<< orphan*/  RV_PLLCTL1C_PDB_PLL1_DISABLE ; 
 int /*<<< orphan*/  RV_PLLCTL1C_PDB_PLL2_DISABLE ; 
 int /*<<< orphan*/  R_PLLCTL1C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tscs42xx* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct tscs42xx *tscs42xx = FUNC3(component);
	int ret;

	FUNC1(&tscs42xx->pll_lock);

	ret = FUNC4(component, R_PLLCTL1C,
			RM_PLLCTL1C_PDB_PLL1,
			RV_PLLCTL1C_PDB_PLL1_DISABLE);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to turn PLL off (%d)\n", ret);
		goto exit;
	}
	ret = FUNC4(component, R_PLLCTL1C,
			RM_PLLCTL1C_PDB_PLL2,
			RV_PLLCTL1C_PDB_PLL2_DISABLE);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to turn PLL off (%d)\n", ret);
		goto exit;
	}

	ret = 0;
exit:
	FUNC2(&tscs42xx->pll_lock);

	return ret;
}