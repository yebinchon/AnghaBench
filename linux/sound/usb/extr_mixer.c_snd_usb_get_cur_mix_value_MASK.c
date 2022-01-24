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
struct TYPE_4__ {TYPE_1__* mixer; } ;
struct usb_mixer_elem_info {int cached; int* cache_val; int /*<<< orphan*/  control; TYPE_2__ head; } ;
struct TYPE_3__ {int /*<<< orphan*/  chip; int /*<<< orphan*/  ignore_ctl_error; } ;

/* Variables and functions */
 int FUNC0 (struct usb_mixer_elem_info*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 

int FUNC2(struct usb_mixer_elem_info *cval,
			     int channel, int index, int *value)
{
	int err;

	if (cval->cached & (1 << channel)) {
		*value = cval->cache_val[index];
		return 0;
	}
	err = FUNC0(cval, channel, value);
	if (err < 0) {
		if (!cval->head.mixer->ignore_ctl_error)
			FUNC1(cval->head.mixer->chip,
				"cannot get current value for control %d ch %d: err = %d\n",
				      cval->control, channel, err);
		return err;
	}
	cval->cached |= 1 << channel;
	cval->cache_val[index] = *value;
	return 0;
}