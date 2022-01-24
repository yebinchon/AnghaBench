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
struct TYPE_3__ {int /*<<< orphan*/  status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;
struct snd_ca0106 {unsigned int* spdif_str_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ca0106*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_ca0106* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
                                 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ca0106 *emu = FUNC3(kcontrol);
	unsigned int idx = FUNC2(kcontrol, &ucontrol->id);
	unsigned int val;

	val = FUNC1(ucontrol->value.iec958.status);
	if (val != emu->spdif_str_bits[idx]) {
		emu->spdif_str_bits[idx] = val;
		FUNC0(emu, idx);
		return 1;
	}
        return 0;
}