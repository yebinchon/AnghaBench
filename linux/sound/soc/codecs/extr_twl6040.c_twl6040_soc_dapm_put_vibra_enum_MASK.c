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
struct soc_enum {int /*<<< orphan*/  reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 unsigned int TWL6040_VIBENA ; 
 unsigned int TWL6040_VIBSEL ; 
 struct snd_soc_component* FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 unsigned int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC0(kcontrol);
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int val;

	/* Do not allow changes while Input/FF efect is running */
	val = FUNC2(component, e->reg);
	if (val & TWL6040_VIBENA && !(val & TWL6040_VIBSEL))
		return -EBUSY;

	return FUNC1(kcontrol, ucontrol);
}