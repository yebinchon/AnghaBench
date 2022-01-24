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
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC6(struct usb_device *dev)
{
	int err, actual_length;
	/* "midi send" enable */
	static const u8 seq[] = { 0x4e, 0x73, 0x52, 0x01 };
	void *buf;

	if (FUNC3(dev, FUNC5(dev, 0x05)))
		return -EINVAL;
	buf = FUNC2(seq, FUNC0(seq), GFP_KERNEL);
	if (!buf)
		return -ENOMEM;
	err = FUNC4(dev, FUNC5(dev, 0x05), buf,
			FUNC0(seq), &actual_length, 1000);
	FUNC1(buf);
	if (err < 0)
		return err;

	return 0;
}