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
struct snd_wss {int* image; int /*<<< orphan*/  reg_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 struct snd_wss* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_wss*,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct snd_kcontrol *kcontrol,
		       struct snd_ctl_elem_value *ucontrol)
{
	struct snd_wss *chip = FUNC0(kcontrol);
	unsigned long flags;
	int reg = kcontrol->private_value & 0xff;
	int shift = (kcontrol->private_value >> 8) & 0xff;
	int mask = (kcontrol->private_value >> 16) & 0xff;
	int invert = (kcontrol->private_value >> 24) & 0xff;
	int change;
	unsigned short val;

	val = (ucontrol->value.integer.value[0] & mask);
	if (invert)
		val = mask - val;
	val <<= shift;
	FUNC2(&chip->reg_lock, flags);
	val = (chip->image[reg] & ~(mask << shift)) | val;
	change = val != chip->image[reg];
	FUNC1(chip, reg, val);
	FUNC3(&chip->reg_lock, flags);
	return change;
}