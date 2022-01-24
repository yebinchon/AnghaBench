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
struct snd_emu10k1 {int* spdif_bits; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_emu10k1* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
                                 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_emu10k1 *emu = FUNC1(kcontrol);
	unsigned int idx = FUNC0(kcontrol, &ucontrol->id);
	unsigned long flags;

	/* Limit: emu->spdif_bits */
	if (idx >= 3)
		return -EINVAL;
	FUNC2(&emu->reg_lock, flags);
	ucontrol->value.iec958.status[0] = (emu->spdif_bits[idx] >> 0) & 0xff;
	ucontrol->value.iec958.status[1] = (emu->spdif_bits[idx] >> 8) & 0xff;
	ucontrol->value.iec958.status[2] = (emu->spdif_bits[idx] >> 16) & 0xff;
	ucontrol->value.iec958.status[3] = (emu->spdif_bits[idx] >> 24) & 0xff;
	FUNC3(&emu->reg_lock, flags);
	return 0;
}