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
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct TYPE_3__ {unsigned char* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cmipci_sb_reg {unsigned char mask; unsigned char left_shift; unsigned char right_shift; scalar_t__ left_reg; scalar_t__ invert; scalar_t__ stereo; } ;
struct cmipci {int /*<<< orphan*/  reg_lock; scalar_t__ iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmipci_sb_reg*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,scalar_t__) ; 
 struct cmipci* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				       struct snd_ctl_elem_value *ucontrol)
{
	struct cmipci *cm = FUNC3(kcontrol);
	struct cmipci_sb_reg reg;
	unsigned char oreg, nreg, val;

	FUNC0(&reg, kcontrol->private_value);
	FUNC4(&cm->reg_lock);
	oreg = FUNC1(cm->iobase + reg.left_reg);
	val = ucontrol->value.integer.value[0] & reg.mask;
	if (reg.invert)
		val = reg.mask - val;
	nreg = oreg & ~(reg.mask << reg.left_shift);
	nreg |= (val << reg.left_shift);
	if (reg.stereo) {
		val = ucontrol->value.integer.value[1] & reg.mask;
		if (reg.invert)
			val = reg.mask - val;
		nreg &= ~(reg.mask << reg.right_shift);
		nreg |= (val << reg.right_shift);
	}
	FUNC2(nreg, cm->iobase + reg.left_reg);
	FUNC5(&cm->reg_lock);
	return (nreg != oreg);
}