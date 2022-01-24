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
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct onyx {int /*<<< orphan*/  mutex; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ONYX_REG_DAC_ATTEN_LEFT ; 
 int /*<<< orphan*/  ONYX_REG_DAC_ATTEN_RIGHT ; 
 scalar_t__ VOLUME_RANGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct onyx*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct onyx*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct onyx* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct onyx *onyx = FUNC4(kcontrol);
	s8 l, r;

	if (ucontrol->value.integer.value[0] < -128 + VOLUME_RANGE_SHIFT ||
	    ucontrol->value.integer.value[0] > -1 + VOLUME_RANGE_SHIFT)
		return -EINVAL;
	if (ucontrol->value.integer.value[1] < -128 + VOLUME_RANGE_SHIFT ||
	    ucontrol->value.integer.value[1] > -1 + VOLUME_RANGE_SHIFT)
		return -EINVAL;

	FUNC0(&onyx->mutex);
	FUNC2(onyx, ONYX_REG_DAC_ATTEN_LEFT, &l);
	FUNC2(onyx, ONYX_REG_DAC_ATTEN_RIGHT, &r);

	if (l + VOLUME_RANGE_SHIFT == ucontrol->value.integer.value[0] &&
	    r + VOLUME_RANGE_SHIFT == ucontrol->value.integer.value[1]) {
		FUNC1(&onyx->mutex);
		return 0;
	}

	FUNC3(onyx, ONYX_REG_DAC_ATTEN_LEFT,
			    ucontrol->value.integer.value[0]
			     - VOLUME_RANGE_SHIFT);
	FUNC3(onyx, ONYX_REG_DAC_ATTEN_RIGHT,
			    ucontrol->value.integer.value[1]
			     - VOLUME_RANGE_SHIFT);
	FUNC1(&onyx->mutex);

	return 1;
}