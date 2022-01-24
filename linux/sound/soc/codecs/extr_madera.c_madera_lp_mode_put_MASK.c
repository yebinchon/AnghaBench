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
struct soc_mixer_control {int reg; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int MADERA_ADC_DIGITAL_VOLUME_1L ; 
 int /*<<< orphan*/  MADERA_INPUT_ENABLES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*) ; 
 struct snd_soc_component* FUNC5 (struct snd_kcontrol*) ; 
 int FUNC6 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

int FUNC7(struct snd_kcontrol *kcontrol,
		       struct snd_ctl_elem_value *ucontrol)
{
	struct soc_mixer_control *mc =
		(struct soc_mixer_control *)kcontrol->private_value;
	struct snd_soc_component *component =
		FUNC5(kcontrol);
	struct snd_soc_dapm_context *dapm =
		FUNC1(component);
	unsigned int val, mask;
	int ret;

	FUNC3(dapm);

	/* Cannot change lp mode on an active input */
	ret = FUNC2(component, MADERA_INPUT_ENABLES, &val);
	if (ret)
		goto exit;
	mask = (mc->reg - MADERA_ADC_DIGITAL_VOLUME_1L) / 4;
	mask ^= 0x1; /* Flip bottom bit for channel order */

	if (val & (1 << mask)) {
		ret = -EBUSY;
		FUNC0(component->dev,
			"Can't change lp mode on an active input\n");
		goto exit;
	}

	ret = FUNC6(kcontrol, ucontrol);

exit:
	FUNC4(dapm);

	return ret;
}