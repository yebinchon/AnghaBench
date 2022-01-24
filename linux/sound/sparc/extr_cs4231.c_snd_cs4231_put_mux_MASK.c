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
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_cs4231 {unsigned short* image; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t CS4231_LEFT_INPUT ; 
 unsigned short CS4231_MIXS_ALL ; 
 size_t CS4231_RIGHT_INPUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs4231*,size_t,unsigned short) ; 
 struct snd_cs4231* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
			      struct snd_ctl_elem_value *ucontrol)
{
	struct snd_cs4231 *chip = FUNC1(kcontrol);
	unsigned long flags;
	unsigned short left, right;
	int change;

	if (ucontrol->value.enumerated.item[0] > 3 ||
	    ucontrol->value.enumerated.item[1] > 3)
		return -EINVAL;
	left = ucontrol->value.enumerated.item[0] << 6;
	right = ucontrol->value.enumerated.item[1] << 6;

	FUNC2(&chip->lock, flags);

	left = (chip->image[CS4231_LEFT_INPUT] & ~CS4231_MIXS_ALL) | left;
	right = (chip->image[CS4231_RIGHT_INPUT] & ~CS4231_MIXS_ALL) | right;
	change = left != chip->image[CS4231_LEFT_INPUT] ||
		 right != chip->image[CS4231_RIGHT_INPUT];
	FUNC0(chip, CS4231_LEFT_INPUT, left);
	FUNC0(chip, CS4231_RIGHT_INPUT, right);

	FUNC3(&chip->lock, flags);

	return change;
}