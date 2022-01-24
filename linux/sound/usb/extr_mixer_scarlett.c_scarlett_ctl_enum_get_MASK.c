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
struct usb_mixer_elem_info {struct scarlett_mixer_elem_enum_info* private_data; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct scarlett_mixer_elem_enum_info {scalar_t__ len; scalar_t__ start; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct usb_mixer_elem_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kctl,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct usb_mixer_elem_info *elem = kctl->private_data;
	struct scarlett_mixer_elem_enum_info *opt = elem->private_data;
	int err, val;

	err = FUNC1(elem, 0, 0, &val);
	if (err < 0)
		return err;

	val = FUNC0(val - opt->start, 0, opt->len-1);

	ucontrol->value.enumerated.item[0] = val;

	return 0;
}