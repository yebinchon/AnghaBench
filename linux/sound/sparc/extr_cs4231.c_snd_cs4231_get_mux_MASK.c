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
struct TYPE_4__ {int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct snd_cs4231 {int* image; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t CS4231_LEFT_INPUT ; 
 int CS4231_MIXS_ALL ; 
 size_t CS4231_RIGHT_INPUT ; 
 struct snd_cs4231* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
			      struct snd_ctl_elem_value *ucontrol)
{
	struct snd_cs4231 *chip = FUNC0(kcontrol);
	unsigned long flags;

	FUNC1(&chip->lock, flags);
	ucontrol->value.enumerated.item[0] =
		(chip->image[CS4231_LEFT_INPUT] & CS4231_MIXS_ALL) >> 6;
	ucontrol->value.enumerated.item[1] =
		(chip->image[CS4231_RIGHT_INPUT] & CS4231_MIXS_ALL) >> 6;
	FUNC2(&chip->lock, flags);

	return 0;
}