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
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_vmaster_mute_hook {unsigned int mute_mode; } ;

/* Variables and functions */
 unsigned int HDA_VMUTE_FOLLOW_MASTER ; 
 int /*<<< orphan*/  FUNC0 (struct hda_vmaster_mute_hook*) ; 
 struct hda_vmaster_mute_hook* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct hda_vmaster_mute_hook *hook = FUNC1(kcontrol);
	unsigned int old_mode = hook->mute_mode;

	hook->mute_mode = ucontrol->value.enumerated.item[0];
	if (hook->mute_mode > HDA_VMUTE_FOLLOW_MASTER)
		hook->mute_mode = HDA_VMUTE_FOLLOW_MASTER;
	if (old_mode == hook->mute_mode)
		return 0;
	FUNC0(hook);
	return 1;
}