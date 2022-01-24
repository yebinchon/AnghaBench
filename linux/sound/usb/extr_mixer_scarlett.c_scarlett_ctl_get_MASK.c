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
struct usb_mixer_elem_info {int channels; } ;
struct snd_kcontrol {scalar_t__ private_value; struct usb_mixer_elem_info* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int SND_SCARLETT_LEVEL_BIAS ; 
 int FUNC0 (int,int,int) ; 
 int FUNC1 (struct usb_mixer_elem_info*,int,int,int*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kctl,
			    struct snd_ctl_elem_value *ucontrol)
{
	struct usb_mixer_elem_info *elem = kctl->private_data;
	int i, err, val;

	for (i = 0; i < elem->channels; i++) {
		err = FUNC1(elem, i, i, &val);
		if (err < 0)
			return err;

		val = FUNC0(val / 256, -128, (int)kctl->private_value) +
				    SND_SCARLETT_LEVEL_BIAS;
		ucontrol->value.integer.value[i] = val;
	}

	return 0;
}