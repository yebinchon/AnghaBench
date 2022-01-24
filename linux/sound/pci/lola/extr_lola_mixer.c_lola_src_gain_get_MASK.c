#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int private_value; } ;
struct TYPE_7__ {unsigned short* value; } ;
struct TYPE_8__ {TYPE_3__ integer; } ;
struct snd_ctl_elem_value {TYPE_4__ value; } ;
struct TYPE_6__ {int src_mask; TYPE_1__* array; } ;
struct lola {TYPE_2__ mixer; } ;
struct TYPE_5__ {int /*<<< orphan*/ * src_gain; int /*<<< orphan*/  src_gain_enable; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct lola* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
			     struct snd_ctl_elem_value *ucontrol)
{
	struct lola *chip = FUNC2(kcontrol);
	unsigned int ofs = kcontrol->private_value & 0xff;
	unsigned int count = (kcontrol->private_value >> 8) & 0xff;
	unsigned int mask, i;

	mask = FUNC0(&chip->mixer.array->src_gain_enable);
	for (i = 0; i < count; i++) {
		unsigned int idx = ofs + i;
		unsigned short val;
		if (!(chip->mixer.src_mask & (1 << idx)))
			return -EINVAL;
		if (mask & (1 << idx))
			val = FUNC1(&chip->mixer.array->src_gain[idx]) + 1;
		else
			val = 0;
		ucontrol->value.integer.value[i] = val;
	}
	return 0;
}