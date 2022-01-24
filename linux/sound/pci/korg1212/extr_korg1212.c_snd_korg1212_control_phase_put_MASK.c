#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_korg1212 {int* volumePhase; int /*<<< orphan*/  lock; TYPE_3__* sharedBufferPtr; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int* volumeData; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct snd_korg1212* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
					  struct snd_ctl_elem_value *u)
{
	struct snd_korg1212 *korg1212 = FUNC1(kcontrol);
        int change = 0;
        int i, val;

	FUNC2(&korg1212->lock);

	i = kcontrol->private_value;

	korg1212->volumePhase[i] = !!u->value.integer.value[0];

	val = korg1212->sharedBufferPtr->volumeData[kcontrol->private_value];

	if ((u->value.integer.value[0] != 0) != (val < 0)) {
		val = FUNC0(val) * (korg1212->volumePhase[i] > 0 ? -1 : 1);
		korg1212->sharedBufferPtr->volumeData[i] = val;
		change = 1;
	}

	if (i >= 8) {
		korg1212->volumePhase[i+1] = !!u->value.integer.value[1];

		val = korg1212->sharedBufferPtr->volumeData[kcontrol->private_value+1];

		if ((u->value.integer.value[1] != 0) != (val < 0)) {
			val = FUNC0(val) * (korg1212->volumePhase[i+1] > 0 ? -1 : 1);
			korg1212->sharedBufferPtr->volumeData[i+1] = val;
			change = 1;
		}
	}

	FUNC3(&korg1212->lock);

        return change;
}