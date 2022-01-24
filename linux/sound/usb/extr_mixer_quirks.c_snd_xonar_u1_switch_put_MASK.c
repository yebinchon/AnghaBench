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
typedef  int u8 ;
struct usb_mixer_elem_list {int /*<<< orphan*/  mixer; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 struct usb_mixer_elem_list* FUNC0 (struct snd_kcontrol*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
				   struct snd_ctl_elem_value *ucontrol)
{
	struct usb_mixer_elem_list *list = FUNC0(kcontrol);
	u8 old_status, new_status;
	int err;

	old_status = kcontrol->private_value;
	if (ucontrol->value.integer.value[0])
		new_status = old_status | 0x02;
	else
		new_status = old_status & ~0x02;
	if (new_status == old_status)
		return 0;

	kcontrol->private_value = new_status;
	err = FUNC1(list->mixer, new_status);
	return err < 0 ? err : 1;
}