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
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cmipci_switch_args {unsigned int mask; unsigned int mask_on; scalar_t__ reg; scalar_t__ is_byte; scalar_t__ ac3_sensitive; } ;
struct cmipci {int /*<<< orphan*/  reg_lock; scalar_t__ iobase; scalar_t__ mixer_insensitive; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (struct cmipci*,scalar_t__) ; 
 struct cmipci* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				   struct snd_ctl_elem_value *ucontrol,
				   struct cmipci_switch_args *args)
{
	unsigned int val;
	struct cmipci *cm = FUNC2(kcontrol);

	FUNC3(&cm->reg_lock);
	if (args->ac3_sensitive && cm->mixer_insensitive) {
		ucontrol->value.integer.value[0] = 0;
		FUNC4(&cm->reg_lock);
		return 0;
	}
	if (args->is_byte)
		val = FUNC0(cm->iobase + args->reg);
	else
		val = FUNC1(cm, args->reg);
	ucontrol->value.integer.value[0] = ((val & args->mask) == args->mask_on) ? 1 : 0;
	FUNC4(&cm->reg_lock);
	return 0;
}