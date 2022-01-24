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
struct usb_device_id {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_card*) ; 
 int FUNC1 (struct usb_device*,struct usb_interface*,struct snd_card**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,struct snd_card*) ; 

__attribute__((used)) static int FUNC7(struct usb_interface *intf,
		     const struct usb_device_id *id)
{
	int ret;
	struct snd_card *card = NULL;
	struct usb_device *usb_dev = FUNC4(intf);

	ret = FUNC1(usb_dev, intf, &card);

	if (ret < 0)
		return ret;

	FUNC6(intf, card);
	ret = FUNC3(FUNC0(card));
	if (ret < 0) {
		FUNC2(&usb_dev->dev, "unable to init card! (ret=%d)\n", ret);
		FUNC5(card);
		return ret;
	}

	return 0;
}