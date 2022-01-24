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
typedef  int /*<<< orphan*/  u8 ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct firmware {char* data; int size; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int FPGA_BUFSIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*) ; 
 int FUNC6 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usb_device*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(
		struct usb_interface *intf, const char *fwname)
{
	int ret;
	int i;
	struct usb_device *device = FUNC2(intf);
	u8 *buffer = FUNC4(FPGA_BUFSIZE, GFP_KERNEL);
	const char *c;
	const char *end;
	const struct firmware *fw;

	if (!buffer)
		return -ENOMEM;

	ret = FUNC6(&fw, fwname, &device->dev);
	if (ret < 0) {
		FUNC1(&intf->dev, "unable to get fpga firmware %s.\n",
				fwname);
		FUNC3(buffer);
		return -EIO;
	}

	c = fw->data;
	end = fw->data + fw->size;

	ret = FUNC7(device, 8, 0, NULL, 0);
	if (ret < 0) {
		FUNC3(buffer);
		FUNC5(fw);
		FUNC1(&intf->dev,
			"unable to upload fpga firmware: begin urb.\n");
		return ret;
	}

	while (c != end) {
		for (i = 0; c != end && i < FPGA_BUFSIZE; i++, c++)
			buffer[i] = FUNC0((u8)*c);

		ret = FUNC8(device, buffer, i);
		if (ret < 0) {
			FUNC5(fw);
			FUNC3(buffer);
			FUNC1(&intf->dev,
				"unable to upload fpga firmware: fw urb.\n");
			return ret;
		}
	}
	FUNC5(fw);
	FUNC3(buffer);

	ret = FUNC7(device, 9, 0, NULL, 0);
	if (ret < 0) {
		FUNC1(&intf->dev,
			"unable to upload fpga firmware: end urb.\n");
		return ret;
	}
	return 0;
}