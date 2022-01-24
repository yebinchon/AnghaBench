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
struct usb_device {int /*<<< orphan*/  dev; } ;
struct snd_usb_audio {struct usb_device* dev; } ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int UAC2_CS_CONTROL_SAM_FREQ ; 
 int /*<<< orphan*/  UAC2_CS_CUR ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_usb_audio *chip, int iface,
			      int altsetting, int clock)
{
	struct usb_device *dev = chip->dev;
	__le32 data;
	int err;

	err = FUNC2(dev, FUNC4(dev, 0), UAC2_CS_CUR,
			      USB_TYPE_CLASS | USB_RECIP_INTERFACE | USB_DIR_IN,
			      UAC2_CS_CONTROL_SAM_FREQ << 8,
			      FUNC3(chip) | (clock << 8),
			      &data, sizeof(data));
	if (err < 0) {
		FUNC0(&dev->dev, "%d:%d: cannot get freq (v2/v3): err %d\n",
			 iface, altsetting, err);
		return 0;
	}

	return FUNC1(data);
}