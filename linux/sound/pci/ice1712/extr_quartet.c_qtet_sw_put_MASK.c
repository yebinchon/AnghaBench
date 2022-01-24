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
struct snd_kcontrol {size_t private_value; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct qtet_kcontrol_private {unsigned int (* get_register ) (struct snd_ice1712*) ;unsigned int bit; int /*<<< orphan*/  (* set_register ) (struct snd_ice1712*,unsigned int) ;} ;

/* Variables and functions */
 struct qtet_kcontrol_private* qtet_privates ; 
 struct snd_ice1712* FUNC0 (struct snd_kcontrol*) ; 
 unsigned int FUNC1 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
		struct snd_ctl_elem_value *ucontrol)
{
	struct qtet_kcontrol_private private =
		qtet_privates[kcontrol->private_value];
	struct snd_ice1712 *ice = FUNC0(kcontrol);
	unsigned int old, new;
	old = private.get_register(ice);
	if (ucontrol->value.integer.value[0])
		new = old | private.bit;
	else
		new = old & ~private.bit;
	if (old != new) {
		private.set_register(ice, new);
		return 1;
	}
	/* no change */
	return 0;
}