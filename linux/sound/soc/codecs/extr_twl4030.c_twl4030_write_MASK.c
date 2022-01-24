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
struct twl4030_priv {unsigned int* ctl_cache; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_MODULE_AUDIO_VOICE ; 
#define  TWL4030_REG_EAR_CTL 133 
#define  TWL4030_REG_HS_GAIN_SET 132 
#define  TWL4030_REG_PRECKL_CTL 131 
#define  TWL4030_REG_PRECKR_CTL 130 
#define  TWL4030_REG_PREDL_CTL 129 
#define  TWL4030_REG_PREDR_CTL 128 
 struct twl4030_priv* FUNC0 (struct snd_soc_component*) ; 
 scalar_t__ FUNC1 (struct twl4030_priv*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component, unsigned int reg,
			 unsigned int value)
{
	struct twl4030_priv *twl4030 = FUNC0(component);

	/* Update the ctl cache */
	switch (reg) {
	case TWL4030_REG_EAR_CTL:
	case TWL4030_REG_PREDL_CTL:
	case TWL4030_REG_PREDR_CTL:
	case TWL4030_REG_PRECKL_CTL:
	case TWL4030_REG_PRECKR_CTL:
	case TWL4030_REG_HS_GAIN_SET:
		twl4030->ctl_cache[reg - TWL4030_REG_EAR_CTL] = value;
		break;
	default:
		break;
	}

	if (FUNC1(twl4030, reg))
		return FUNC2(TWL4030_MODULE_AUDIO_VOICE, value, reg);

	return 0;
}