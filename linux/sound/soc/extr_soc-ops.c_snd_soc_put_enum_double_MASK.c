#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct soc_enum {unsigned int items; unsigned int shift_l; unsigned int mask; unsigned int shift_r; int /*<<< orphan*/  reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 struct snd_soc_component* FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct soc_enum*,unsigned int) ; 

int FUNC3(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC0(kcontrol);
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int *item = ucontrol->value.enumerated.item;
	unsigned int val;
	unsigned int mask;

	if (item[0] >= e->items)
		return -EINVAL;
	val = FUNC2(e, item[0]) << e->shift_l;
	mask = e->mask << e->shift_l;
	if (e->shift_l != e->shift_r) {
		if (item[1] >= e->items)
			return -EINVAL;
		val |= FUNC2(e, item[1]) << e->shift_r;
		mask |= e->mask << e->shift_r;
	}

	return FUNC1(component, e->reg, mask, val);
}