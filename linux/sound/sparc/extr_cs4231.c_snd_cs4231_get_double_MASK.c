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
struct snd_cs4231 {int* image; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct snd_cs4231* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_cs4231 *chip = FUNC0(kcontrol);
	unsigned long flags;
	int left_reg = kcontrol->private_value & 0xff;
	int right_reg = (kcontrol->private_value >> 8) & 0xff;
	int shift_left = (kcontrol->private_value >> 16) & 0x07;
	int shift_right = (kcontrol->private_value >> 19) & 0x07;
	int mask = (kcontrol->private_value >> 24) & 0xff;
	int invert = (kcontrol->private_value >> 22) & 1;

	FUNC1(&chip->lock, flags);

	ucontrol->value.integer.value[0] =
		(chip->image[left_reg] >> shift_left) & mask;
	ucontrol->value.integer.value[1] =
		(chip->image[right_reg] >> shift_right) & mask;

	FUNC2(&chip->lock, flags);

	if (invert) {
		ucontrol->value.integer.value[0] =
			(mask - ucontrol->value.integer.value[0]);
		ucontrol->value.integer.value[1] =
			(mask - ucontrol->value.integer.value[1]);
	}

	return 0;
}