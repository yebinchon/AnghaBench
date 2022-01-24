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
struct TYPE_4__ {void** value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS4236_LEFT_MASTER ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS4236_RIGHT_MASTER ; 
 void* FUNC1 (int) ; 
 struct snd_wss* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_wss *chip = FUNC2(kcontrol);
	unsigned long flags;
	
	FUNC3(&chip->reg_lock, flags);
	ucontrol->value.integer.value[0] = FUNC1(chip->eimage[FUNC0(CS4236_LEFT_MASTER)] & 0x7f);
	ucontrol->value.integer.value[1] = FUNC1(chip->eimage[FUNC0(CS4236_RIGHT_MASTER)] & 0x7f);
	FUNC4(&chip->reg_lock, flags);
	return 0;
}