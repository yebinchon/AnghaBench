#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct usb_mixer_interface {TYPE_1__* chip; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_2__ {struct usb_device* dev; } ;

/* Variables and functions */
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,unsigned int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_mixer_interface *mixer,
				   struct snd_kcontrol *kctl)
{
	struct usb_device *dev = mixer->chip->dev;
	unsigned int pval = kctl->private_value;
	u8 value;
	int err;

	err = FUNC1(dev, FUNC2(dev, 0),
			      (pval >> 16) & 0xff,
			      USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
			      0, pval & 0xffff, &value, 1);
	if (err < 0) {
		FUNC0(&dev->dev,
			"unable to issue vendor read request (ret = %d)", err);
		return err;
	}

	kctl->private_value |= ((unsigned int)value << 24);
	return 0;
}