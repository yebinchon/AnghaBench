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
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct TYPE_4__ {unsigned int index; } ;
struct snd_ctl_elem_value {TYPE_3__ value; TYPE_1__ id; } ;
struct echoaudio {int** monitor_gain; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ECHOGAIN_MAXOUT ; 
 int ECHOGAIN_MINOUT ; 
 unsigned int ECHO_MAXAUDIOINPUTS ; 
 unsigned int ECHO_MAXAUDIOOUTPUTS ; 
 int EINVAL ; 
 unsigned int FUNC0 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC1 (struct echoaudio*,unsigned int,unsigned int,int) ; 
 struct echoaudio* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
			      struct snd_ctl_elem_value *ucontrol)
{
	struct echoaudio *chip;
	int changed,  gain;
	unsigned int out, in;

	changed = 0;
	chip = FUNC2(kcontrol);
	out = ucontrol->id.index / FUNC0(chip);
	in = ucontrol->id.index % FUNC0(chip);
	if (out >= ECHO_MAXAUDIOOUTPUTS || in >= ECHO_MAXAUDIOINPUTS)
		return -EINVAL;
	gain = ucontrol->value.integer.value[0];
	if (gain < ECHOGAIN_MINOUT || gain > ECHOGAIN_MAXOUT)
		return -EINVAL;
	if (chip->monitor_gain[out][in] != gain) {
		FUNC3(&chip->lock);
		FUNC1(chip, out, in, gain);
		FUNC5(chip);
		FUNC4(&chip->lock);
		changed = 1;
	}
	return changed;
}