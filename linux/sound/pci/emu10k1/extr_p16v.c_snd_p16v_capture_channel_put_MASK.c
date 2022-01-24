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
typedef  unsigned int u32 ;
struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1 {unsigned int p16v_capture_channel; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPTURE_P16V_SOURCE ; 
 int EINVAL ; 
 int FUNC0 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct snd_emu10k1* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct snd_emu10k1 *emu = FUNC2(kcontrol);
	unsigned int val;
	int change = 0;
	u32 tmp;

	val = ucontrol->value.enumerated.item[0] ;
	if (val > 3)
		return -EINVAL;
	change = (emu->p16v_capture_channel != val);
	if (change) {
		emu->p16v_capture_channel = val;
		tmp = FUNC0(emu, CAPTURE_P16V_SOURCE, 0) & 0xfffc;
		FUNC1(emu, CAPTURE_P16V_SOURCE, 0, tmp | val);
	}
        return change;
}