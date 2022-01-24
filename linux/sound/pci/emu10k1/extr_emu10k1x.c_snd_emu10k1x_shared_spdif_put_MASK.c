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
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct emu10k1x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROUTING ; 
 int /*<<< orphan*/  SPDIF_SELECT ; 
 int /*<<< orphan*/  FUNC0 (struct emu10k1x*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct emu10k1x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct emu10k1x* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
					 struct snd_ctl_elem_value *ucontrol)
{
	struct emu10k1x *emu = FUNC2(kcontrol);
	unsigned int val;

	val = ucontrol->value.integer.value[0] ;

	if (val) {
		// enable spdif output
		FUNC1(emu, SPDIF_SELECT, 0, 0x000);
		FUNC1(emu, ROUTING, 0, 0x700);
		FUNC0(emu, 0x1000);
	} else {
		// disable spdif output
		FUNC1(emu, SPDIF_SELECT, 0, 0x700);
		FUNC1(emu, ROUTING, 0, 0x1003F);
		FUNC0(emu, 0x1080);
	}
	return 0;
}