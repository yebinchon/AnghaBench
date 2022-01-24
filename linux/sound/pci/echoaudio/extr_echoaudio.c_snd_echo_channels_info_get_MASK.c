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
struct echoaudio {int num_clock_sources; int* clock_source_list; } ;

/* Variables and functions */
 int ECHO_CLOCK_NUMBER ; 
 int FUNC0 (struct echoaudio*) ; 
 int FUNC1 (struct echoaudio*) ; 
 int FUNC2 (struct echoaudio*) ; 
 int FUNC3 (struct echoaudio*) ; 
 int FUNC4 (struct echoaudio*) ; 
 int FUNC5 (struct echoaudio*) ; 
 struct echoaudio* FUNC6 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
				      struct snd_ctl_elem_value *ucontrol)
{
	struct echoaudio *chip;
	int detected, clocks, bit, src;

	chip = FUNC6(kcontrol);
	ucontrol->value.integer.value[0] = FUNC3(chip);
	ucontrol->value.integer.value[1] = FUNC1(chip);
	ucontrol->value.integer.value[2] = FUNC4(chip);
	ucontrol->value.integer.value[3] = FUNC2(chip);
	ucontrol->value.integer.value[4] = FUNC5(chip);

	/* Compute the bitmask of the currently valid input clocks */
	detected = FUNC0(chip);
	clocks = 0;
	src = chip->num_clock_sources - 1;
	for (bit = ECHO_CLOCK_NUMBER - 1; bit >= 0; bit--)
		if (detected & (1 << bit))
			for (; src >= 0; src--)
				if (bit == chip->clock_source_list[src]) {
					clocks |= 1 << src;
					break;
				}
	ucontrol->value.integer.value[5] = clocks;

	return 0;
}