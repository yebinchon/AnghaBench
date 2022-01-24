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
typedef  int u8 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct onyx {int /*<<< orphan*/  mutex; scalar_t__ analog_locked; } ;

/* Variables and functions */
 int EBUSY ; 
 int ONYX_MUTE_LEFT ; 
 int ONYX_MUTE_RIGHT ; 
 int /*<<< orphan*/  ONYX_REG_DAC_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct onyx*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct onyx*,int /*<<< orphan*/ ,int) ; 
 struct onyx* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct onyx *onyx = FUNC4(kcontrol);
	u8 v = 0, c = 0;
	int err = -EBUSY;

	FUNC0(&onyx->mutex);
	if (onyx->analog_locked)
		goto out_unlock;

	FUNC2(onyx, ONYX_REG_DAC_CONTROL, &v);
	c = v;
	c &= ~(ONYX_MUTE_RIGHT | ONYX_MUTE_LEFT);
	if (!ucontrol->value.integer.value[0])
		c |= ONYX_MUTE_LEFT;
	if (!ucontrol->value.integer.value[1])
		c |= ONYX_MUTE_RIGHT;
	err = FUNC3(onyx, ONYX_REG_DAC_CONTROL, c);

 out_unlock:
	FUNC1(&onyx->mutex);

	return !err ? (v != c) : err;
}