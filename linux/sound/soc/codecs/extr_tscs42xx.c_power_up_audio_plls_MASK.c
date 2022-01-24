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
struct tscs42xx {int /*<<< orphan*/  pll_lock; int /*<<< orphan*/  samplerate; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMSG ; 
 unsigned int RM_PLLCTL1C_PDB_PLL1 ; 
 unsigned int RM_PLLCTL1C_PDB_PLL2 ; 
 unsigned int RV_PLLCTL1C_PDB_PLL1_ENABLE ; 
 unsigned int RV_PLLCTL1C_PDB_PLL2_ENABLE ; 
 int /*<<< orphan*/  R_PLLCTL1C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct tscs42xx* FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component)
{
	struct tscs42xx *tscs42xx = FUNC5(component);
	int freq_out;
	int ret;
	unsigned int mask;
	unsigned int val;

	freq_out = FUNC4(tscs42xx->samplerate);
	switch (freq_out) {
	case 122880000: /* 48k */
		mask = RM_PLLCTL1C_PDB_PLL1;
		val = RV_PLLCTL1C_PDB_PLL1_ENABLE;
		break;
	case 112896000: /* 44.1k */
		mask = RM_PLLCTL1C_PDB_PLL2;
		val = RV_PLLCTL1C_PDB_PLL2_ENABLE;
		break;
	default:
		ret = -EINVAL;
		FUNC0(component->dev,
				"Unrecognized PLL output freq (%d)\n", ret);
		return ret;
	}

	FUNC1(&tscs42xx->pll_lock);

	ret = FUNC6(component, R_PLLCTL1C, mask, val);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to turn PLL on (%d)\n", ret);
		goto exit;
	}

	if (!FUNC3(component)) {
		FUNC0(component->dev, "Failed to lock plls\n");
		ret = -ENOMSG;
		goto exit;
	}

	ret = 0;
exit:
	FUNC2(&tscs42xx->pll_lock);

	return ret;
}