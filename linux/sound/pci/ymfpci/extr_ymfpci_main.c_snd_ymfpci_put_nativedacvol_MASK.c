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
struct snd_ymfpci {int /*<<< orphan*/  reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 unsigned int YDSXGR_BUF441OUTVOL ; 
 unsigned int YDSXGR_NATIVEDACOUTVOL ; 
 struct snd_ymfpci* FUNC0 (struct snd_kcontrol*) ; 
 unsigned int FUNC1 (struct snd_ymfpci*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ymfpci*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				       struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ymfpci *chip = FUNC0(kcontrol);
	unsigned int reg = YDSXGR_NATIVEDACOUTVOL;
	unsigned int reg2 = YDSXGR_BUF441OUTVOL;
	int change;
	unsigned int value, oval;
	
	value = ucontrol->value.integer.value[0] & 0x3fff;
	value |= (ucontrol->value.integer.value[1] & 0x3fff) << 16;
	FUNC3(&chip->reg_lock);
	oval = FUNC1(chip, reg);
	change = value != oval;
	FUNC2(chip, reg, value);
	FUNC2(chip, reg2, value);
	FUNC4(&chip->reg_lock);
	return change;
}