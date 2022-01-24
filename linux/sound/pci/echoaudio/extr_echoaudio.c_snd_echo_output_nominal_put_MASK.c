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
struct echoaudio {scalar_t__* nominal_level; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC1 (struct echoaudio*,int,scalar_t__) ; 
 struct echoaudio* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				       struct snd_ctl_elem_value *ucontrol)
{
	struct echoaudio *chip;
	int c, changed;

	changed = 0;
	chip = FUNC2(kcontrol);
	FUNC3(&chip->lock);
	for (c = 0; c < FUNC0(chip); c++) {
		if (chip->nominal_level[c] != ucontrol->value.integer.value[c]) {
			FUNC1(chip, c,
					  ucontrol->value.integer.value[c]);
			changed = 1;
		}
	}
	if (changed)
		FUNC5(chip);
	FUNC4(&chip->lock);
	return changed;
}