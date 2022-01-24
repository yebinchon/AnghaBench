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
struct usb_device {int dummy; } ;
struct snd_usb_substream {TYPE_2__* stream; struct usb_device* dev; } ;
struct audioformat {int formats; int /*<<< orphan*/  iface; } ;
struct TYPE_4__ {TYPE_1__* chip; } ;
struct TYPE_3__ {int /*<<< orphan*/  usb_id; } ;

/* Variables and functions */
 int SNDRV_PCM_FMTBIT_DSD_U32_BE ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC5(struct snd_usb_substream *subs,
			      struct audioformat *fmt)
{
	struct usb_device *dev = subs->dev;
	int err;

	if (FUNC0(subs->stream->chip->usb_id)) {
		/* First switch to alt set 0, otherwise the mode switch cmd
		 * will not be accepted by the DAC
		 */
		err = FUNC3(dev, fmt->iface, 0);
		if (err < 0)
			return err;

		FUNC1(20); /* Delay needed after setting the interface */

		/* Vendor mode switch cmd is required. */
		if (fmt->formats & SNDRV_PCM_FMTBIT_DSD_U32_BE) {
			/* DSD mode (DSD_U32) requested */
			err = FUNC2(dev, FUNC4(dev, 0), 0,
					      USB_DIR_OUT|USB_TYPE_VENDOR|USB_RECIP_INTERFACE,
					      1, 1, NULL, 0);
			if (err < 0)
				return err;

		} else {
			/* PCM or DOP mode (S32) requested */
			/* PCM mode (S16) requested */
			err = FUNC2(dev, FUNC4(dev, 0), 0,
					      USB_DIR_OUT|USB_TYPE_VENDOR|USB_RECIP_INTERFACE,
					      0, 1, NULL, 0);
			if (err < 0)
				return err;

		}
		FUNC1(20);
	}
	return 0;
}