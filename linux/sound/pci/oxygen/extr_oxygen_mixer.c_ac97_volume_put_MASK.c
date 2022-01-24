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
typedef  int u16 ;
struct snd_kcontrol {int private_value; struct oxygen* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct oxygen {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct oxygen*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *ctl,
			   struct snd_ctl_elem_value *value)
{
	struct oxygen *chip = ctl->private_data;
	unsigned int codec = (ctl->private_value >> 24) & 1;
	int stereo = (ctl->private_value >> 16) & 1;
	unsigned int index = ctl->private_value & 0xff;
	u16 oldreg, newreg;
	int change;

	FUNC0(&chip->mutex);
	oldreg = FUNC2(chip, codec, index);
	if (!stereo) {
		newreg = oldreg & ~0x1f;
		newreg |= 31 - (value->value.integer.value[0] & 0x1f);
	} else {
		newreg = oldreg & ~0x1f1f;
		newreg |= (31 - (value->value.integer.value[0] & 0x1f)) << 8;
		newreg |= 31 - (value->value.integer.value[1] & 0x1f);
	}
	change = newreg != oldreg;
	if (change)
		FUNC3(chip, codec, index, newreg);
	FUNC1(&chip->mutex);
	return change;
}