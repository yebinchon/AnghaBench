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
struct snd_kcontrol {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  internal_clock; } ;
struct snd_emu10k1 {TYPE_3__ emu1010; } ;
struct TYPE_4__ {int /*<<< orphan*/ * item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 struct snd_emu10k1* FUNC0 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC1(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct snd_emu10k1 *emu = FUNC0(kcontrol);

	ucontrol->value.enumerated.item[0] = emu->emu1010.internal_clock;
	return 0;
}