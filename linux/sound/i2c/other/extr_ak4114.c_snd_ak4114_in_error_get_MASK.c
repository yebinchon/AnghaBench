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
struct snd_kcontrol {size_t private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ak4114 {int /*<<< orphan*/  lock; scalar_t__* errors; } ;

/* Variables and functions */
 struct ak4114* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				   struct snd_ctl_elem_value *ucontrol)
{
	struct ak4114 *chip = FUNC0(kcontrol);

	FUNC1(&chip->lock);
	ucontrol->value.integer.value[0] =
		chip->errors[kcontrol->private_value];
	chip->errors[kcontrol->private_value] = 0;
	FUNC2(&chip->lock);
	return 0;
}