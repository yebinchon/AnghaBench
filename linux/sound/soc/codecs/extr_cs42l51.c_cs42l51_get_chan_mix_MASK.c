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
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS42L51_PCM_MIXER ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
			struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC1(kcontrol);
	unsigned long value = FUNC0(component, CS42L51_PCM_MIXER)&3;

	switch (value) {
	default:
	case 0:
		ucontrol->value.enumerated.item[0] = 0;
		break;
	/* same value : (L+R)/2 and (R+L)/2 */
	case 1:
	case 2:
		ucontrol->value.enumerated.item[0] = 1;
		break;
	case 3:
		ucontrol->value.enumerated.item[0] = 2;
		break;
	}

	return 0;
}