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
struct usb_interface {int dummy; } ;
struct usb_device_id {int /*<<< orphan*/  driver_info; } ;
struct usb_device {int dummy; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_card*) ; 
 int FUNC2 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct usb_device*,struct usb_interface*,struct snd_card**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_interface *intf,
			    const struct usb_device_id *device_id,
			    struct snd_card **cardp)
{
	struct usb_device *device = FUNC0(intf);
	struct snd_card *card;
	int err;

	err = FUNC7(device, intf, &card, device_id->driver_info);
	if (err < 0)
		return err;

	if (!FUNC3(card)) {
		FUNC1(card);
		return -EINVAL;
	}

	err = FUNC2(card);
	if (err < 0) {
		FUNC1(card);
		return err;
	}

	FUNC5(FUNC6(device, 0));
	FUNC4(device);
	*cardp = card;
	return 0;
}