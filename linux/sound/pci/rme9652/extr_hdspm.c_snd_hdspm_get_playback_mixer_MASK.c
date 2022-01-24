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
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct TYPE_6__ {int index; } ;
struct snd_ctl_elem_value {TYPE_2__ value; TYPE_3__ id; } ;
struct hdspm {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int HDSPM_MAX_CHANNELS ; 
 int UNITY_GAIN ; 
 int FUNC0 (struct hdspm*,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct hdspm* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct hdspm *hdspm = FUNC2(kcontrol);
	int channel;

	channel = ucontrol->id.index - 1;

	if (FUNC1(channel < 0 || channel >= HDSPM_MAX_CHANNELS))
		return -EINVAL;

	FUNC3(&hdspm->lock);
	ucontrol->value.integer.value[0] =
	  (FUNC0(hdspm, channel, channel)*64)/UNITY_GAIN;
	FUNC4(&hdspm->lock);

	return 0;
}