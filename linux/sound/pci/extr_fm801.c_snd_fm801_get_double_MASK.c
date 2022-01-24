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
struct TYPE_3__ {long* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct fm801 {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int FUNC0 (struct fm801*,int) ; 
 struct fm801* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct fm801 *chip = FUNC1(kcontrol);
        int reg = kcontrol->private_value & 0xff;
	int shift_left = (kcontrol->private_value >> 8) & 0x0f;
	int shift_right = (kcontrol->private_value >> 12) & 0x0f;
	int mask = (kcontrol->private_value >> 16) & 0xff;
	int invert = (kcontrol->private_value >> 24) & 0xff;
	long *value = ucontrol->value.integer.value;

	FUNC2(&chip->reg_lock);
	value[0] = (FUNC0(chip, reg) >> shift_left) & mask;
	value[1] = (FUNC0(chip, reg) >> shift_right) & mask;
	FUNC3(&chip->reg_lock);
	if (invert) {
		value[0] = mask - value[0];
		value[1] = mask - value[1];
	}
	return 0;
}