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
struct usb_mixer_interface {struct scarlett2_mixer_data* private_data; } ;
struct TYPE_4__ {struct usb_mixer_interface* mixer; } ;
struct usb_mixer_elem_info {int control; TYPE_1__ head; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct scarlett2_mixer_data {int* vol; int /*<<< orphan*/  data_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCARLETT2_CONFIG_LINE_OUT_VOLUME ; 
 scalar_t__ SCARLETT2_VOLUME_BIAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usb_mixer_interface*,int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kctl,
				    struct snd_ctl_elem_value *ucontrol)
{
	struct usb_mixer_elem_info *elem = kctl->private_data;
	struct usb_mixer_interface *mixer = elem->head.mixer;
	struct scarlett2_mixer_data *private = mixer->private_data;
	int index = elem->control;
	int oval, val, err = 0;

	FUNC0(&private->data_mutex);

	oval = private->vol[index];
	val = ucontrol->value.integer.value[0];

	if (oval == val)
		goto unlock;

	private->vol[index] = val;
	err = FUNC2(mixer, SCARLETT2_CONFIG_LINE_OUT_VOLUME,
				       index, val - SCARLETT2_VOLUME_BIAS);
	if (err == 0)
		err = 1;

unlock:
	FUNC1(&private->data_mutex);
	return err;
}