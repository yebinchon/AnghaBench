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
struct soc_enum {unsigned int reg; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 unsigned int MADERA_DFC1_ENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*) ; 
 struct snd_soc_component* FUNC5 (struct snd_kcontrol*) ; 
 int FUNC6 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

int FUNC7(struct snd_kcontrol *kcontrol,
		   struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component =
		FUNC5(kcontrol);
	struct snd_soc_dapm_context *dapm =
		FUNC1(component);
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int reg = e->reg;
	unsigned int val;
	int ret = 0;

	reg = ((reg / 6) * 6) - 2;

	FUNC3(dapm);

	ret = FUNC2(component, reg, &val);
	if (ret)
		goto exit;

	if (val & MADERA_DFC1_ENA) {
		ret = -EBUSY;
		FUNC0(component->dev, "Can't change mode on an active DFC\n");
		goto exit;
	}

	ret = FUNC6(kcontrol, ucontrol);
exit:
	FUNC4(dapm);

	return ret;
}