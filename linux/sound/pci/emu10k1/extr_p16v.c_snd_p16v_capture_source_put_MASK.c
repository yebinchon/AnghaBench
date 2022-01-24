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
typedef  int u32 ;
struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1 {unsigned int p16v_capture_source; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASIC_INTERRUPT ; 
 int EINVAL ; 
 int FUNC0 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_emu10k1* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct snd_emu10k1 *emu = FUNC2(kcontrol);
	unsigned int val;
	int change = 0;
	u32 mask;
	u32 source;

	val = ucontrol->value.enumerated.item[0] ;
	if (val > 7)
		return -EINVAL;
	change = (emu->p16v_capture_source != val);
	if (change) {
		emu->p16v_capture_source = val;
		source = (val << 28) | (val << 24) | (val << 20) | (val << 16);
		mask = FUNC0(emu, BASIC_INTERRUPT, 0) & 0xffff;
		FUNC1(emu, BASIC_INTERRUPT, 0, source | mask);
	}
        return change;
}