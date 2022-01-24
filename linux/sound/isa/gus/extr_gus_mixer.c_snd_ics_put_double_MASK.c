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
struct TYPE_6__ {unsigned char** ics_regs; } ;
struct snd_gus_card {int /*<<< orphan*/  reg_lock; scalar_t__ ics_flipped; scalar_t__ ics_flag; TYPE_3__ gf1; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIXCNTRLPORT ; 
 int /*<<< orphan*/  MIXDATAPORT ; 
 int SNDRV_ICS_GF1_DEV ; 
 int SNDRV_ICS_MASTER_DEV ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 struct snd_gus_card* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,unsigned char) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_gus_card *gus = FUNC2(kcontrol);
	unsigned long flags;
	int addr = kcontrol->private_value & 0xff;
	int change;
	unsigned char val1, val2, oval1, oval2;
	
	val1 = ucontrol->value.integer.value[0] & 127;
	val2 = ucontrol->value.integer.value[1] & 127;
	FUNC3(&gus->reg_lock, flags);
	oval1 = gus->gf1.ics_regs[addr][0];
	oval2 = gus->gf1.ics_regs[addr][1];
	change = val1 != oval1 || val2 != oval2;
	gus->gf1.ics_regs[addr][0] = val1;
	gus->gf1.ics_regs[addr][1] = val2;
	if (gus->ics_flag && gus->ics_flipped &&
	    (addr == SNDRV_ICS_GF1_DEV || addr == SNDRV_ICS_MASTER_DEV))
		FUNC5(val1, val2);
	addr <<= 3;
	FUNC1(addr | 0, FUNC0(gus, MIXCNTRLPORT));
	FUNC1(1, FUNC0(gus, MIXDATAPORT));
	FUNC1(addr | 2, FUNC0(gus, MIXCNTRLPORT));
	FUNC1((unsigned char) val1, FUNC0(gus, MIXDATAPORT));
	FUNC1(addr | 1, FUNC0(gus, MIXCNTRLPORT));
	FUNC1(2, FUNC0(gus, MIXDATAPORT));
	FUNC1(addr | 3, FUNC0(gus, MIXCNTRLPORT));
	FUNC1((unsigned char) val2, FUNC0(gus, MIXDATAPORT));
	FUNC4(&gus->reg_lock, flags);
	return change;
}