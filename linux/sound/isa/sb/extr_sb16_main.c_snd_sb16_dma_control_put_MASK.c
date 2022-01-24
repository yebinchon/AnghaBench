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
struct snd_sb {int /*<<< orphan*/  reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned char* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 struct snd_sb* FUNC0 (struct snd_kcontrol*) ; 
 unsigned char FUNC1 (struct snd_sb*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sb*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_sb *chip = FUNC0(kcontrol);
	unsigned long flags;
	unsigned char nval, oval;
	int change;
	
	if ((nval = ucontrol->value.enumerated.item[0]) > 2)
		return -EINVAL;
	FUNC3(&chip->reg_lock, flags);
	oval = FUNC1(chip);
	change = nval != oval;
	FUNC2(chip, nval);
	FUNC4(&chip->reg_lock, flags);
	return change;
}