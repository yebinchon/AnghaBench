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
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cs4281 {int dummy; } ;

/* Variables and functions */
 int CS_VOL_MASK ; 
 int FUNC0 (struct cs4281*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4281*,int,int) ; 
 struct cs4281* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct cs4281 *chip = FUNC2(kcontrol);
	int change = 0;
	int regL = (kcontrol->private_value >> 16) & 0xffff;
	int regR = kcontrol->private_value & 0xffff;
	int volL, volR;

	volL = CS_VOL_MASK - (FUNC0(chip, regL) & CS_VOL_MASK);
	volR = CS_VOL_MASK - (FUNC0(chip, regR) & CS_VOL_MASK);

	if (ucontrol->value.integer.value[0] != volL) {
		volL = CS_VOL_MASK - (ucontrol->value.integer.value[0] & CS_VOL_MASK);
		FUNC1(chip, regL, volL);
		change = 1;
	}
	if (ucontrol->value.integer.value[1] != volR) {
		volR = CS_VOL_MASK - (ucontrol->value.integer.value[1] & CS_VOL_MASK);
		FUNC1(chip, regR, volR);
		change = 1;
	}
	return change;
}