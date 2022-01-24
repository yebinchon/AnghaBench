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
struct snd_wss {int* image; int /*<<< orphan*/  reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 size_t CS4235_LEFT_MASTER ; 
 size_t CS4235_RIGHT_MASTER ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 struct snd_wss* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_wss*,size_t,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_wss *chip = FUNC1(kcontrol);
	unsigned long flags;
	int change;
	unsigned short val1, val2;
	
	val1 = FUNC0(ucontrol->value.integer.value[0]);
	val2 = FUNC0(ucontrol->value.integer.value[1]);
	FUNC3(&chip->reg_lock, flags);
	val1 = (chip->image[CS4235_LEFT_MASTER] & ~(3 << 5)) | val1;
	val2 = (chip->image[CS4235_RIGHT_MASTER] & ~(3 << 5)) | val2;
	change = val1 != chip->image[CS4235_LEFT_MASTER] || val2 != chip->image[CS4235_RIGHT_MASTER];
	FUNC2(chip, CS4235_LEFT_MASTER, val1);
	FUNC2(chip, CS4235_RIGHT_MASTER, val2);
	FUNC4(&chip->reg_lock, flags);
	return change;
}