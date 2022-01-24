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
struct TYPE_4__ {int /*<<< orphan*/  id; TYPE_1__* mixer; } ;
struct usb_mixer_elem_info {int min; int max; int res; int dBmin; int dBmax; scalar_t__ val_type; int initialized; int cmask; int control; TYPE_2__ head; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_CHANNELS ; 
 int /*<<< orphan*/  UAC_GET_MAX ; 
 int /*<<< orphan*/  UAC_GET_MIN ; 
 int /*<<< orphan*/  UAC_GET_RES ; 
 int /*<<< orphan*/  UAC_SET_RES ; 
 scalar_t__ USB_MIXER_BOOLEAN ; 
 scalar_t__ USB_MIXER_INV_BOOLEAN ; 
 int FUNC0 (struct usb_mixer_elem_info*,int) ; 
 scalar_t__ FUNC1 (struct usb_mixer_elem_info*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC2 (struct usb_mixer_elem_info*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct usb_mixer_elem_info*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (struct usb_mixer_elem_info*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_mixer_elem_info*,struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC8(struct usb_mixer_elem_info *cval,
				   int default_min, struct snd_kcontrol *kctl)
{
	/* for failsafe */
	cval->min = default_min;
	cval->max = cval->min + 1;
	cval->res = 1;
	cval->dBmin = cval->dBmax = 0;

	if (cval->val_type == USB_MIXER_BOOLEAN ||
	    cval->val_type == USB_MIXER_INV_BOOLEAN) {
		cval->initialized = 1;
	} else {
		int minchn = 0;
		if (cval->cmask) {
			int i;
			for (i = 0; i < MAX_CHANNELS; i++)
				if (cval->cmask & (1 << i)) {
					minchn = i + 1;
					break;
				}
		}
		if (FUNC1(cval, UAC_GET_MAX, (cval->control << 8) | minchn, &cval->max) < 0 ||
		    FUNC1(cval, UAC_GET_MIN, (cval->control << 8) | minchn, &cval->min) < 0) {
			FUNC6(cval->head.mixer->chip,
				      "%d:%d: cannot get min/max values for control %d (id %d)\n",
				   cval->head.id, FUNC3(cval->head.mixer->chip),
							       cval->control, cval->head.id);
			return -EINVAL;
		}
		if (FUNC1(cval, UAC_GET_RES,
				  (cval->control << 8) | minchn,
				  &cval->res) < 0) {
			cval->res = 1;
		} else {
			int last_valid_res = cval->res;

			while (cval->res > 1) {
				if (FUNC4(cval, UAC_SET_RES,
								(cval->control << 8) | minchn,
								cval->res / 2) < 0)
					break;
				cval->res /= 2;
			}
			if (FUNC1(cval, UAC_GET_RES,
					  (cval->control << 8) | minchn, &cval->res) < 0)
				cval->res = last_valid_res;
		}
		if (cval->res == 0)
			cval->res = 1;

		/* Additional checks for the proper resolution
		 *
		 * Some devices report smaller resolutions than actually
		 * reacting.  They don't return errors but simply clip
		 * to the lower aligned value.
		 */
		if (cval->min + cval->res < cval->max) {
			int last_valid_res = cval->res;
			int saved, test, check;
			FUNC2(cval, minchn, &saved);
			for (;;) {
				test = saved;
				if (test < cval->max)
					test += cval->res;
				else
					test -= cval->res;
				if (test < cval->min || test > cval->max ||
				    FUNC5(cval, minchn, 0, test) ||
				    FUNC2(cval, minchn, &check)) {
					cval->res = last_valid_res;
					break;
				}
				if (test == check)
					break;
				cval->res *= 2;
			}
			FUNC5(cval, minchn, 0, saved);
		}

		cval->initialized = 1;
	}

	if (kctl)
		FUNC7(cval, kctl);

	/* USB descriptions contain the dB scale in 1/256 dB unit
	 * while ALSA TLV contains in 1/100 dB unit
	 */
	cval->dBmin = (FUNC0(cval, cval->min) * 100) / 256;
	cval->dBmax = (FUNC0(cval, cval->max) * 100) / 256;
	if (cval->dBmin > cval->dBmax) {
		/* something is wrong; assume it's either from/to 0dB */
		if (cval->dBmin < 0)
			cval->dBmax = 0;
		else if (cval->dBmin > 0)
			cval->dBmin = 0;
		if (cval->dBmin > cval->dBmax) {
			/* totally crap, return an error */
			return -EINVAL;
		}
	}

	return 0;
}