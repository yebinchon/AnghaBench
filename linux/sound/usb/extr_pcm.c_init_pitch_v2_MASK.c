#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_host_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct snd_usb_audio {struct usb_device* dev; } ;
struct audioformat {int /*<<< orphan*/  altsetting; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  UAC2_CS_CUR ; 
 int UAC2_EP_CS_PITCH ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_ENDPOINT ; 
 int USB_TYPE_CLASS ; 
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_usb_audio*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_usb_audio *chip, int iface,
			 struct usb_host_interface *alts,
			 struct audioformat *fmt)
{
	struct usb_device *dev = chip->dev;
	unsigned char data[1];
	int err;

	data[0] = 1;
	err = FUNC0(dev, FUNC2(dev, 0), UAC2_CS_CUR,
			      USB_TYPE_CLASS | USB_RECIP_ENDPOINT | USB_DIR_OUT,
			      UAC2_EP_CS_PITCH << 8, 0,
			      data, sizeof(data));
	if (err < 0) {
		FUNC1(chip, "%d:%d: cannot set enable PITCH (v2)\n",
			      iface, fmt->altsetting);
		return err;
	}

	return 0;
}