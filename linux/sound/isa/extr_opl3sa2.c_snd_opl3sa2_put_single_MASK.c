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
struct snd_opl3sa2 {unsigned short* ctlregs; int /*<<< orphan*/  reg_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_opl3sa2*,int,unsigned short) ; 
 struct snd_opl3sa2* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_opl3sa2 *chip = FUNC1(kcontrol);
	unsigned long flags;
	int reg = kcontrol->private_value & 0xff;
	int shift = (kcontrol->private_value >> 8) & 0xff;
	int mask = (kcontrol->private_value >> 16) & 0xff;
	int invert = (kcontrol->private_value >> 24) & 0xff;
	int change;
	unsigned short val, oval;
	
	val = (ucontrol->value.integer.value[0] & mask);
	if (invert)
		val = mask - val;
	val <<= shift;
	FUNC2(&chip->reg_lock, flags);
	oval = chip->ctlregs[reg];
	val = (oval & ~(mask << shift)) | val;
	change = val != oval;
	FUNC0(chip, reg, val);
	FUNC3(&chip->reg_lock, flags);
	return change;
}