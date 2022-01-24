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
struct snd_wss {int* eimage; int /*<<< orphan*/  reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS4236_LEFT_MASTER ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS4236_RIGHT_MASTER ; 
 int /*<<< orphan*/  FUNC1 (struct snd_wss*,int /*<<< orphan*/ ,unsigned short) ; 
 unsigned short FUNC2 (int) ; 
 struct snd_wss* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_wss *chip = FUNC3(kcontrol);
	unsigned long flags;
	int change;
	unsigned short val1, val2;
	
	val1 = FUNC2(ucontrol->value.integer.value[0] & 0x7f);
	val2 = FUNC2(ucontrol->value.integer.value[1] & 0x7f);
	FUNC4(&chip->reg_lock, flags);
	val1 = (chip->eimage[FUNC0(CS4236_LEFT_MASTER)] & ~0x7f) | val1;
	val2 = (chip->eimage[FUNC0(CS4236_RIGHT_MASTER)] & ~0x7f) | val2;
	change = val1 != chip->eimage[FUNC0(CS4236_LEFT_MASTER)] || val2 != chip->eimage[FUNC0(CS4236_RIGHT_MASTER)];
	FUNC1(chip, CS4236_LEFT_MASTER, val1);
	FUNC1(chip, CS4236_RIGHT_MASTER, val2);
	FUNC5(&chip->reg_lock, flags);
	return change;
}