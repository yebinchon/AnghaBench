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
 int /*<<< orphan*/  RT5631_DEPOP_FUN_CTRL_2 ; 
 int RT5631_EN_ONE_BIT_DEPOP ; 
 int /*<<< orphan*/  RT5631_HP_OUT_VOL ; 
 int /*<<< orphan*/  RT5631_INT_ST_IRQ_CTRL_2 ; 
 int RT5631_L_MUTE ; 
 int RT5631_R_MUTE ; 
 int /*<<< orphan*/  RT5631_SOFT_VOL_CTRL ; 
 int /*<<< orphan*/  RT5631_SPK_INTL_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct snd_soc_component *component, int enable)
{
	unsigned int soft_vol, hp_zc;

	/* enable one-bit depop function */
	FUNC5(component, RT5631_DEPOP_FUN_CTRL_2,
				RT5631_EN_ONE_BIT_DEPOP, 0);

	/* keep soft volume and zero crossing setting */
	soft_vol = FUNC4(component, RT5631_SOFT_VOL_CTRL);
	FUNC6(component, RT5631_SOFT_VOL_CTRL, 0);
	hp_zc = FUNC4(component, RT5631_INT_ST_IRQ_CTRL_2);
	FUNC6(component, RT5631_INT_ST_IRQ_CTRL_2, hp_zc & 0xf7ff);
	if (enable) {
		FUNC3(FUNC0(10));
		/* config one-bit depop parameter */
		FUNC2(component, RT5631_SPK_INTL_CTRL, 0x307f);
		FUNC5(component, RT5631_HP_OUT_VOL,
				RT5631_L_MUTE | RT5631_R_MUTE, 0);
		FUNC1(300);
	} else {
		FUNC5(component, RT5631_HP_OUT_VOL,
			RT5631_L_MUTE | RT5631_R_MUTE,
			RT5631_L_MUTE | RT5631_R_MUTE);
		FUNC1(100);
	}

	/* recover soft volume and zero crossing setting */
	FUNC6(component, RT5631_SOFT_VOL_CTRL, soft_vol);
	FUNC6(component, RT5631_INT_ST_IRQ_CTRL_2, hp_zc);
}