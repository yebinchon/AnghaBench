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
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 unsigned int MADERA_EP_SEL_MASK ; 
 unsigned int MADERA_EP_SEL_SHIFT ; 
 int /*<<< orphan*/  MADERA_OUTPUT_ENABLES_1 ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int*) ; 
 struct snd_soc_component* FUNC1 (struct snd_kcontrol*) ; 

int FUNC2(struct snd_kcontrol *kcontrol,
			  struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component =
		FUNC1(kcontrol);
	unsigned int val;
	int ret;

	ret = FUNC0(component, MADERA_OUTPUT_ENABLES_1, &val);
	if (ret)
		return ret;

	val &= MADERA_EP_SEL_MASK;
	val >>= MADERA_EP_SEL_SHIFT;
	ucontrol->value.enumerated.item[0] = val;

	return 0;
}