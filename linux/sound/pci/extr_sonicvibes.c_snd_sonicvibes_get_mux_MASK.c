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
 int /*<<< orphan*/  SV_IREG_LEFT_ADC ; 
 int /*<<< orphan*/  SV_IREG_RIGHT_ADC ; 
 int SV_RECSRC_OUT ; 
 struct sonicvibes* FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (struct sonicvibes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct sonicvibes *sonic = FUNC0(kcontrol);
	
	FUNC2(&sonic->reg_lock);
	ucontrol->value.enumerated.item[0] = ((FUNC1(sonic, SV_IREG_LEFT_ADC) & SV_RECSRC_OUT) >> 5) - 1;
	ucontrol->value.enumerated.item[1] = ((FUNC1(sonic, SV_IREG_RIGHT_ADC) & SV_RECSRC_OUT) >> 5) - 1;
	FUNC3(&sonic->reg_lock);
	return 0;
}