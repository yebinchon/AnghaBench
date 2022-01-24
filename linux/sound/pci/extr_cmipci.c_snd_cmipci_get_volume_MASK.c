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
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cmipci_sb_reg {int left_shift; int mask; int right_shift; scalar_t__ invert; int /*<<< orphan*/  right_reg; scalar_t__ stereo; int /*<<< orphan*/  left_reg; } ;
struct cmipci {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmipci_sb_reg*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cmipci*,int /*<<< orphan*/ ) ; 
 struct cmipci* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct cmipci *cm = FUNC2(kcontrol);
	struct cmipci_sb_reg reg;
	int val;

	FUNC0(&reg, kcontrol->private_value);
	FUNC3(&cm->reg_lock);
	val = (FUNC1(cm, reg.left_reg) >> reg.left_shift) & reg.mask;
	if (reg.invert)
		val = reg.mask - val;
	ucontrol->value.integer.value[0] = val;
	if (reg.stereo) {
		val = (FUNC1(cm, reg.right_reg) >> reg.right_shift) & reg.mask;
		if (reg.invert)
			val = reg.mask - val;
		ucontrol->value.integer.value[1] = val;
	}
	FUNC4(&cm->reg_lock);
	return 0;
}