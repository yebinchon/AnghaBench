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
struct wm8580_priv {int /*<<< orphan*/  regmap; } ;
struct soc_mixer_control {unsigned int reg; unsigned int rreg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int,int) ; 
 struct wm8580_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,unsigned int,int,int) ; 
 struct snd_soc_component* FUNC4 (struct snd_kcontrol*) ; 
 int FUNC5 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
			 struct snd_ctl_elem_value *ucontrol)
{
	struct soc_mixer_control *mc =
		(struct soc_mixer_control *)kcontrol->private_value;
	struct snd_soc_component *component = FUNC4(kcontrol);
	struct wm8580_priv *wm8580 = FUNC2(component);
	unsigned int reg = mc->reg;
	unsigned int reg2 = mc->rreg;
	int ret;

	/* Clear the register cache VU so we write without VU set */
	FUNC0(wm8580->regmap, true);
	FUNC1(wm8580->regmap, reg, 0x100, 0x000);
	FUNC1(wm8580->regmap, reg2, 0x100, 0x000);
	FUNC0(wm8580->regmap, false);

	ret = FUNC5(kcontrol, ucontrol);
	if (ret < 0)
		return ret;

	/* Now write again with the volume update bit set */
	FUNC3(component, reg, 0x100, 0x100);
	FUNC3(component, reg2, 0x100, 0x100);

	return 0;
}