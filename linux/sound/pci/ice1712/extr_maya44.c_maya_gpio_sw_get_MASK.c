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
struct snd_maya44 {int /*<<< orphan*/  ice; } ;
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct TYPE_4__ {unsigned int* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 struct snd_maya44* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
			    struct snd_ctl_elem_value *ucontrol)
{
	struct snd_maya44 *chip = FUNC3(kcontrol);
	unsigned int shift = FUNC1(kcontrol->private_value);
	unsigned int val;

	val = (FUNC2(chip->ice) >> shift) & 1;
	if (FUNC0(kcontrol->private_value))
		val = !val;
	ucontrol->value.integer.value[0] = val;
	return 0;
}