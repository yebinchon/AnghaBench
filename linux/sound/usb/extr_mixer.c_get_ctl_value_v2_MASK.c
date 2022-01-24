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
struct usb_mixer_elem_info {int /*<<< orphan*/  val_type; TYPE_2__ head; } ;
struct snd_usb_audio {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_3__ {struct snd_usb_audio* chip; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  UAC2_CS_CUR ; 
 int /*<<< orphan*/  UAC2_CS_RANGE ; 
#define  UAC_GET_CUR 131 
#define  UAC_GET_MAX 130 
#define  UAC_GET_MIN 129 
#define  UAC_GET_RES 128 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int FUNC0 (struct usb_mixer_elem_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,unsigned char*,int) ; 
 int FUNC4 (struct snd_usb_audio*) ; 
 scalar_t__ FUNC5 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_usb_audio*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_usb_audio*,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct usb_mixer_elem_info *cval, int request,
			    int validx, int *value_ret)
{
	struct snd_usb_audio *chip = cval->head.mixer->chip;
	/* enough space for one range */
	unsigned char buf[sizeof(__u16) + 3 * sizeof(__u32)];
	unsigned char *val;
	int idx = 0, ret, val_size, size;
	__u8 bRequest;

	val_size = FUNC7(cval->val_type);

	if (request == UAC_GET_CUR) {
		bRequest = UAC2_CS_CUR;
		size = val_size;
	} else {
		bRequest = UAC2_CS_RANGE;
		size = sizeof(__u16) + 3 * val_size;
	}

	FUNC1(buf, 0, sizeof(buf));

	ret = FUNC5(chip) ? -EIO : 0;
	if (ret)
		goto error;

	idx = FUNC4(chip) | (cval->head.id << 8);
	ret = FUNC3(chip->dev, FUNC9(chip->dev, 0), bRequest,
			      USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_IN,
			      validx, idx, buf, size);
	FUNC6(chip);

	if (ret < 0) {
error:
		FUNC8(chip,
			"cannot get ctl value: req = %#x, wValue = %#x, wIndex = %#x, type = %d\n",
			request, validx, idx, cval->val_type);
		return ret;
	}

	/* FIXME: how should we handle multiple triplets here? */

	switch (request) {
	case UAC_GET_CUR:
		val = buf;
		break;
	case UAC_GET_MIN:
		val = buf + sizeof(__u16);
		break;
	case UAC_GET_MAX:
		val = buf + sizeof(__u16) + val_size;
		break;
	case UAC_GET_RES:
		val = buf + sizeof(__u16) + val_size * 2;
		break;
	default:
		return -EINVAL;
	}

	*value_ret = FUNC0(cval,
					  FUNC2(val, val_size));

	return 0;
}