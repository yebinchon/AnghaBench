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
typedef  int u8 ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct ihex_record {int address; int* data; int len; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct ihex_record*) ; 
 struct ihex_record* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int FUNC5 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct usb_device*,int,int,int*,int) ; 
 int FUNC7 (struct firmware const*,struct ihex_record*) ; 
 scalar_t__ FUNC8 (struct ihex_record*) ; 

__attribute__((used)) static int FUNC9(
		struct usb_interface *intf, const char *fwname,
		unsigned int postaddr, u8 *postdata, unsigned int postlen)
{
	int ret;
	u8 data;
	struct usb_device *device = FUNC1(intf);
	const struct firmware *fw = NULL;
	struct ihex_record *rec = FUNC3(sizeof(struct ihex_record),
			GFP_KERNEL);

	if (!rec)
		return -ENOMEM;

	ret = FUNC5(&fw, fwname, &device->dev);
	if (ret < 0) {
		FUNC2(rec);
		FUNC0(&intf->dev,
			"error requesting ezusb firmware %s.\n", fwname);
		return ret;
	}
	ret = FUNC7(fw, rec);
	if (ret < 0) {
		FUNC2(rec);
		FUNC4(fw);
		FUNC0(&intf->dev,
			"error validating ezusb firmware %s.\n", fwname);
		return ret;
	}
	/* upload firmware image */
	data = 0x01; /* stop ezusb cpu */
	ret = FUNC6(device, 0xa0, 0xe600, &data, 1);
	if (ret < 0) {
		FUNC2(rec);
		FUNC4(fw);
		FUNC0(&intf->dev,
			"unable to upload ezusb firmware %s: begin message.\n",
			fwname);
		return ret;
	}

	while (FUNC8(rec)) { /* write firmware */
		ret = FUNC6(device, 0xa0, rec->address,
				rec->data, rec->len);
		if (ret < 0) {
			FUNC2(rec);
			FUNC4(fw);
			FUNC0(&intf->dev,
				"unable to upload ezusb firmware %s: data urb.\n",
				fwname);
			return ret;
		}
	}

	FUNC4(fw);
	FUNC2(rec);
	if (postdata) { /* write data after firmware has been uploaded */
		ret = FUNC6(device, 0xa0, postaddr,
				postdata, postlen);
		if (ret < 0) {
			FUNC0(&intf->dev,
				"unable to upload ezusb firmware %s: post urb.\n",
				fwname);
			return ret;
		}
	}

	data = 0x00; /* resume ezusb cpu */
	ret = FUNC6(device, 0xa0, 0xe600, &data, 1);
	if (ret < 0) {
		FUNC0(&intf->dev,
			"unable to upload ezusb firmware %s: end message.\n",
			fwname);
		return ret;
	}
	return 0;
}