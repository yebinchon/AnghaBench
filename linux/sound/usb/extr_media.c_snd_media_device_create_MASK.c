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
struct usb_device {int /*<<< orphan*/  dev; } ;
struct snd_usb_audio {struct media_device* media_dev; } ;
struct media_device {int /*<<< orphan*/  devnode; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct media_device*) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct media_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct media_device*) ; 
 struct media_device* FUNC5 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_usb_audio*) ; 
 int FUNC8 (struct snd_usb_audio*) ; 

int FUNC9(struct snd_usb_audio *chip,
			struct usb_interface *iface)
{
	struct media_device *mdev;
	struct usb_device *usbdev = FUNC2(iface);
	int ret = 0;

	/* usb-audio driver is probed for each usb interface, and
	 * there are multiple interfaces per device. Avoid calling
	 * media_device_usb_allocate() each time usb_audio_probe()
	 * is called. Do it only once.
	 */
	if (chip->media_dev) {
		mdev = chip->media_dev;
		goto snd_mixer_init;
	}

	mdev = FUNC5(usbdev, KBUILD_MODNAME, THIS_MODULE);
	if (FUNC0(mdev))
		return -ENOMEM;

	/* save media device - avoid lookups */
	chip->media_dev = mdev;

snd_mixer_init:
	/* Create media entities for mixer and control dev */
	ret = FUNC8(chip);
	/* media_device might be registered, print error and continue */
	if (ret)
		FUNC1(&usbdev->dev,
			"Couldn't create media mixer entities. Error: %d\n",
			ret);

	if (!FUNC6(mdev->devnode)) {
		/* dont'register if snd_media_mixer_init() failed */
		if (ret)
			goto create_fail;

		/* register media_device */
		ret = FUNC4(mdev);
create_fail:
		if (ret) {
			FUNC7(chip);
			FUNC3(mdev, KBUILD_MODNAME, THIS_MODULE);
			/* clear saved media_dev */
			chip->media_dev = NULL;
			FUNC1(&usbdev->dev,
				"Couldn't register media device. Error: %d\n",
				ret);
			return ret;
		}
	}

	return ret;
}