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
struct TYPE_4__ {int id; TYPE_1__* mixer; } ;
struct usb_mixer_elem_info {int /*<<< orphan*/  val_type; TYPE_2__ head; scalar_t__ idx_off; } ;
struct snd_usb_audio {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ protocol; struct snd_usb_audio* chip; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int UAC2_CS_CUR ; 
 int UAC_SET_CUR ; 
 scalar_t__ UAC_VERSION_1 ; 
 int USB_DIR_OUT ; 
 int /*<<< orphan*/  USB_MIXER_S16 ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int FUNC0 (struct usb_mixer_elem_info*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,unsigned char*,int) ; 
 int FUNC2 (struct snd_usb_audio*) ; 
 int FUNC3 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_usb_audio*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_usb_audio*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct usb_mixer_elem_info *cval,
				int request, int validx, int value_set)
{
	struct snd_usb_audio *chip = cval->head.mixer->chip;
	unsigned char buf[4];
	int idx = 0, val_len, err, timeout = 10;

	validx += cval->idx_off;


	if (cval->head.mixer->protocol == UAC_VERSION_1) {
		val_len = cval->val_type >= USB_MIXER_S16 ? 2 : 1;
	} else { /* UAC_VERSION_2/3 */
		val_len = FUNC5(cval->val_type);

		/* FIXME */
		if (request != UAC_SET_CUR) {
			FUNC6(chip, "RANGE setting not yet supported\n");
			return -EINVAL;
		}

		request = UAC2_CS_CUR;
	}

	value_set = FUNC0(cval, value_set);
	buf[0] = value_set & 0xff;
	buf[1] = (value_set >> 8) & 0xff;
	buf[2] = (value_set >> 16) & 0xff;
	buf[3] = (value_set >> 24) & 0xff;

	err = FUNC3(chip);
	if (err < 0)
		return -EIO;

	while (timeout-- > 0) {
		idx = FUNC2(chip) | (cval->head.id << 8);
		err = FUNC1(chip->dev,
				      FUNC7(chip->dev, 0), request,
				      USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_OUT,
				      validx, idx, buf, val_len);
		if (err >= 0) {
			err = 0;
			goto out;
		} else if (err == -ETIMEDOUT) {
			goto out;
		}
	}
	FUNC6(chip, "cannot set ctl value: req = %#x, wValue = %#x, wIndex = %#x, type = %d, data = %#x/%#x\n",
		      request, validx, idx, cval->val_type, buf[0], buf[1]);
	err = -EINVAL;

 out:
	FUNC4(chip);
	return err;
}