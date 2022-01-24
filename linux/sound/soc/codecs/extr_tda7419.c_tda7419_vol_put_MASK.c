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
struct tda7419_vol_control {unsigned int reg; unsigned int rreg; unsigned int mask; int thresh; unsigned int invert; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 struct snd_soc_component* FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (struct snd_soc_component*,unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC2 (struct tda7419_vol_control*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
			   struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component =
		FUNC0(kcontrol);
	struct tda7419_vol_control *tvc =
		(struct tda7419_vol_control *)kcontrol->private_value;
	unsigned int reg = tvc->reg;
	unsigned int rreg = tvc->rreg;
	unsigned int mask = tvc->mask;
	int thresh = tvc->thresh;
	unsigned int invert = tvc->invert;
	int val;
	int ret;

	val = FUNC3(ucontrol->value.integer.value[0],
				    thresh, invert);
	ret = FUNC1(component, reg,
					    mask, val);
	if (ret < 0)
		return ret;

	if (FUNC2(tvc)) {
		val = FUNC3(ucontrol->value.integer.value[1],
					    thresh, invert);
		ret = FUNC1(component, rreg,
						    mask, val);
	}

	return ret;
}