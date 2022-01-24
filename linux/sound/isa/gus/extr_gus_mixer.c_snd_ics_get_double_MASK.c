#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {unsigned char** ics_regs; } ;
struct snd_gus_card {int /*<<< orphan*/  reg_lock; TYPE_1__ gf1; } ;
struct TYPE_5__ {unsigned char* value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;

/* Variables and functions */
 struct snd_gus_card* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_gus_card *gus = FUNC0(kcontrol);
	unsigned long flags;
	int addr = kcontrol->private_value & 0xff;
	unsigned char left, right;
	
	FUNC1(&gus->reg_lock, flags);
	left = gus->gf1.ics_regs[addr][0];
	right = gus->gf1.ics_regs[addr][1];
	FUNC2(&gus->reg_lock, flags);
	ucontrol->value.integer.value[0] = left & 127;
	ucontrol->value.integer.value[1] = right & 127;
	return 0;
}