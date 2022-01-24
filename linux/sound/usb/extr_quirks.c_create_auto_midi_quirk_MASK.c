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
struct usb_interface_descriptor {int bNumEndpoints; } ;
struct usb_interface {struct usb_host_interface* altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_driver {int dummy; } ;
struct snd_usb_audio {int /*<<< orphan*/  usb_id; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_usb_audio*,struct usb_interface*,struct usb_driver*,struct usb_host_interface*) ; 
 int FUNC2 (struct snd_usb_audio*,struct usb_interface*,struct usb_driver*,struct usb_host_interface*) ; 
 int FUNC3 (struct snd_usb_audio*,struct usb_interface*,struct usb_driver*,struct usb_host_interface*) ; 
 struct usb_endpoint_descriptor* FUNC4 (struct usb_host_interface*,int /*<<< orphan*/ ) ; 
 struct usb_interface_descriptor* FUNC5 (struct usb_host_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_endpoint_descriptor*) ; 

__attribute__((used)) static int FUNC8(struct snd_usb_audio *chip,
				  struct usb_interface *iface,
				  struct usb_driver *driver)
{
	struct usb_host_interface *alts;
	struct usb_interface_descriptor *altsd;
	struct usb_endpoint_descriptor *epd;
	int err;

	alts = &iface->altsetting[0];
	altsd = FUNC5(alts);

	/* must have at least one bulk/interrupt endpoint for streaming */
	if (altsd->bNumEndpoints < 1)
		return -ENODEV;
	epd = FUNC4(alts, 0);
	if (!FUNC6(epd) &&
	    !FUNC7(epd))
		return -ENODEV;

	switch (FUNC0(chip->usb_id)) {
	case 0x0499: /* Yamaha */
		err = FUNC3(chip, iface, driver, alts);
		if (err != -ENODEV)
			return err;
		break;
	case 0x0582: /* Roland */
		err = FUNC1(chip, iface, driver, alts);
		if (err != -ENODEV)
			return err;
		break;
	}

	return FUNC2(chip, iface, driver, alts);
}