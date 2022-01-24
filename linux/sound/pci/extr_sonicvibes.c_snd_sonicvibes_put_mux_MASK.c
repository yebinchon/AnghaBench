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
struct sonicvibes {int /*<<< orphan*/  reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SV_IREG_LEFT_ADC ; 
 int /*<<< orphan*/  SV_IREG_RIGHT_ADC ; 
 unsigned short SV_RECSRC_OUT ; 
 struct sonicvibes* FUNC0 (struct snd_kcontrol*) ; 
 unsigned short FUNC1 (struct sonicvibes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sonicvibes*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct sonicvibes *sonic = FUNC0(kcontrol);
	unsigned short left, right, oval1, oval2;
	int change;
	
	if (ucontrol->value.enumerated.item[0] >= 7 ||
	    ucontrol->value.enumerated.item[1] >= 7)
		return -EINVAL;
	left = (ucontrol->value.enumerated.item[0] + 1) << 5;
	right = (ucontrol->value.enumerated.item[1] + 1) << 5;
	FUNC3(&sonic->reg_lock);
	oval1 = FUNC1(sonic, SV_IREG_LEFT_ADC);
	oval2 = FUNC1(sonic, SV_IREG_RIGHT_ADC);
	left = (oval1 & ~SV_RECSRC_OUT) | left;
	right = (oval2 & ~SV_RECSRC_OUT) | right;
	change = left != oval1 || right != oval2;
	FUNC2(sonic, SV_IREG_LEFT_ADC, left);
	FUNC2(sonic, SV_IREG_RIGHT_ADC, right);
	FUNC4(&sonic->reg_lock);
	return change;
}