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
struct cmipci {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int CM_BASE2LIN ; 
 int CM_CENTR2LIN ; 
 int /*<<< orphan*/  CM_REAR2LIN ; 
 int /*<<< orphan*/  CM_REG_LEGACY_CTRL ; 
 int /*<<< orphan*/  CM_REG_MIXER1 ; 
 int FUNC0 (struct cmipci*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct cmipci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cmipci*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct cmipci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cmipci* FUNC4 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
				       struct snd_ctl_elem_value *ucontrol)
{
	struct cmipci *cm = FUNC4(kcontrol);
	int change;

	FUNC5(&cm->reg_lock);
	if (ucontrol->value.enumerated.item[0] == 2)
		change = FUNC2(cm, CM_REG_LEGACY_CTRL, CM_CENTR2LIN | CM_BASE2LIN);
	else
		change = FUNC0(cm, CM_REG_LEGACY_CTRL, CM_CENTR2LIN | CM_BASE2LIN);
	if (ucontrol->value.enumerated.item[0] == 1)
		change |= FUNC3(cm, CM_REG_MIXER1, CM_REAR2LIN);
	else
		change |= FUNC1(cm, CM_REG_MIXER1, CM_REAR2LIN);
	FUNC6(&cm->reg_lock);
	return change;
}