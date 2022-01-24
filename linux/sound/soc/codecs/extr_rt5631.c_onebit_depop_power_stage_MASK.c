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

/* Variables and functions */
 int /*<<< orphan*/  RT5631_CP_INTL_REG2 ; 
 int /*<<< orphan*/  RT5631_DEPOP_FUN_CTRL_2 ; 
 unsigned int RT5631_EN_CAP_FREE_DEPOP ; 
 int /*<<< orphan*/  RT5631_EN_ONE_BIT_DEPOP ; 
 int /*<<< orphan*/  RT5631_INT_ST_IRQ_CTRL_2 ; 
 int /*<<< orphan*/  RT5631_SOFT_VOL_CTRL ; 
 int /*<<< orphan*/  RT5631_SPK_INTL_CTRL ; 
 int /*<<< orphan*/  RT5631_TEST_MODE_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_component *component, int enable)
{
	unsigned int soft_vol, hp_zc;

	/* enable one-bit depop function */
	FUNC3(component, RT5631_DEPOP_FUN_CTRL_2,
				RT5631_EN_ONE_BIT_DEPOP, 0);

	/* keep soft volume and zero crossing setting */
	soft_vol = FUNC2(component, RT5631_SOFT_VOL_CTRL);
	FUNC4(component, RT5631_SOFT_VOL_CTRL, 0);
	hp_zc = FUNC2(component, RT5631_INT_ST_IRQ_CTRL_2);
	FUNC4(component, RT5631_INT_ST_IRQ_CTRL_2, hp_zc & 0xf7ff);
	if (enable) {
		/* config one-bit depop parameter */
		FUNC1(component, RT5631_TEST_MODE_CTRL, 0x84c0);
		FUNC1(component, RT5631_SPK_INTL_CTRL, 0x309f);
		FUNC1(component, RT5631_CP_INTL_REG2, 0x6530);
		/* power on capless block */
		FUNC4(component, RT5631_DEPOP_FUN_CTRL_2,
				RT5631_EN_CAP_FREE_DEPOP);
	} else {
		/* power off capless block */
		FUNC4(component, RT5631_DEPOP_FUN_CTRL_2, 0);
		FUNC0(100);
	}

	/* recover soft volume and zero crossing setting */
	FUNC4(component, RT5631_SOFT_VOL_CTRL, soft_vol);
	FUNC4(component, RT5631_INT_ST_IRQ_CTRL_2, hp_zc);
}