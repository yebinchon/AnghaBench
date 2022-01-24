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
struct usb_mixer_elem_info {int control; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int FUNC0 (struct usb_mixer_elem_info*,int) ; 
 int FUNC1 (struct usb_mixer_elem_info*,int,int*) ; 
 int FUNC2 (struct usb_mixer_elem_info*,int) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				  struct snd_ctl_elem_value *ucontrol)
{
	struct usb_mixer_elem_info *cval = kcontrol->private_data;
	int val, err;

	err = FUNC1(cval, cval->control << 8, &val);
	if (err < 0) {
		ucontrol->value.enumerated.item[0] = 0;
		return FUNC0(cval, err);
	}
	val = FUNC2(cval, val);
	ucontrol->value.enumerated.item[0] = val;
	return 0;
}