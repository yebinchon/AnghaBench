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
struct snd_line6_pcm {int impulse_volume; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE6_STREAM_IMPULSE ; 
 int FUNC0 (struct snd_line6_pcm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_line6_pcm*,int /*<<< orphan*/ ) ; 
 struct snd_line6_pcm* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct snd_line6_pcm *line6pcm = FUNC2(kcontrol);
	int value = ucontrol->value.integer.value[0];
	int err;

	if (line6pcm->impulse_volume == value)
		return 0;

	line6pcm->impulse_volume = value;
	if (value > 0) {
		err = FUNC0(line6pcm, LINE6_STREAM_IMPULSE, true);
		if (err < 0) {
			line6pcm->impulse_volume = 0;
			return err;
		}
	} else {
		FUNC1(line6pcm, LINE6_STREAM_IMPULSE);
	}
	return 1;
}