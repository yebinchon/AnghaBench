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
struct TYPE_6__ {unsigned char active_voice; } ;
struct snd_gus_card {unsigned char mix_cntrl_reg; int /*<<< orphan*/  reg_lock; TYPE_3__ gf1; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  GF1PAGE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIXCNTRLREG ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 struct snd_gus_card* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_gus_card *gus = FUNC2(kcontrol);
	unsigned long flags;
	int shift = kcontrol->private_value & 0xff;
	int invert = (kcontrol->private_value >> 8) & 1;
	int change;
	unsigned char oval, nval;
	
	nval = ucontrol->value.integer.value[0] & 1;
	if (invert)
		nval ^= 1;
	nval <<= shift;
	FUNC3(&gus->reg_lock, flags);
	oval = gus->mix_cntrl_reg;
	nval = (oval & ~(1 << shift)) | nval;
	change = nval != oval;
	FUNC1(gus->mix_cntrl_reg = nval, FUNC0(gus, MIXCNTRLREG));
	FUNC1(gus->gf1.active_voice = 0, FUNC0(gus, GF1PAGE));
	FUNC4(&gus->reg_lock, flags);
	return change;
}