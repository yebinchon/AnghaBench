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
struct twl4030_priv {unsigned int sysclk; struct twl4030_codec_data* pdata; } ;
struct twl4030_codec_data {int /*<<< orphan*/  hs_extmute_gpio; scalar_t__ hs_extmute; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 unsigned char TWL4030_EXTMUTE ; 
 int /*<<< orphan*/  TWL4030_MODULE_AUDIO_VOICE ; 
 unsigned char TWL4030_RAMP_DELAY ; 
 unsigned char TWL4030_RAMP_EN ; 
 int /*<<< orphan*/  TWL4030_REG_HS_GAIN_SET ; 
 int /*<<< orphan*/  TWL4030_REG_HS_POPN_SET ; 
 unsigned char TWL4030_VMID_EN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct twl4030_priv* FUNC2 (struct snd_soc_component*) ; 
 unsigned char FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct snd_soc_component *component, int ramp)
{
	unsigned char hs_gain, hs_pop;
	struct twl4030_priv *twl4030 = FUNC2(component);
	struct twl4030_codec_data *pdata = twl4030->pdata;
	/* Base values for ramp delay calculation: 2^19 - 2^26 */
	unsigned int ramp_base[] = {524288, 1048576, 2097152, 4194304,
				    8388608, 16777216, 33554432, 67108864};
	unsigned int delay;

	hs_gain = FUNC3(component, TWL4030_REG_HS_GAIN_SET);
	hs_pop = FUNC3(component, TWL4030_REG_HS_POPN_SET);
	delay = (ramp_base[(hs_pop & TWL4030_RAMP_DELAY) >> 2] /
		twl4030->sysclk) + 1;

	/* Enable external mute control, this dramatically reduces
	 * the pop-noise */
	if (pdata && pdata->hs_extmute) {
		if (FUNC0(pdata->hs_extmute_gpio)) {
			FUNC1(pdata->hs_extmute_gpio, 1);
		} else {
			hs_pop |= TWL4030_EXTMUTE;
			FUNC5(component, TWL4030_REG_HS_POPN_SET, hs_pop);
		}
	}

	if (ramp) {
		/* Headset ramp-up according to the TRM */
		hs_pop |= TWL4030_VMID_EN;
		FUNC5(component, TWL4030_REG_HS_POPN_SET, hs_pop);
		/* Actually write to the register */
		FUNC6(TWL4030_MODULE_AUDIO_VOICE, hs_gain,
				 TWL4030_REG_HS_GAIN_SET);
		hs_pop |= TWL4030_RAMP_EN;
		FUNC5(component, TWL4030_REG_HS_POPN_SET, hs_pop);
		/* Wait ramp delay time + 1, so the VMID can settle */
		FUNC4(delay);
	} else {
		/* Headset ramp-down _not_ according to
		 * the TRM, but in a way that it is working */
		hs_pop &= ~TWL4030_RAMP_EN;
		FUNC5(component, TWL4030_REG_HS_POPN_SET, hs_pop);
		/* Wait ramp delay time + 1, so the VMID can settle */
		FUNC4(delay);
		/* Bypass the reg_cache to mute the headset */
		FUNC6(TWL4030_MODULE_AUDIO_VOICE, hs_gain & (~0x0f),
				 TWL4030_REG_HS_GAIN_SET);

		hs_pop &= ~TWL4030_VMID_EN;
		FUNC5(component, TWL4030_REG_HS_POPN_SET, hs_pop);
	}

	/* Disable external mute */
	if (pdata && pdata->hs_extmute) {
		if (FUNC0(pdata->hs_extmute_gpio)) {
			FUNC1(pdata->hs_extmute_gpio, 0);
		} else {
			hs_pop &= ~TWL4030_EXTMUTE;
			FUNC5(component, TWL4030_REG_HS_POPN_SET, hs_pop);
		}
	}
}