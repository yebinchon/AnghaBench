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
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC6(struct usb_device *dev, u8 *buf,
						int buf_size, int *length)
{
	int err, actual_length;

	if (FUNC2(dev, FUNC5(dev, 0x01)))
		return -EINVAL;
	err = FUNC3(dev, FUNC5(dev, 0x01), buf, *length,
				&actual_length, 1000);
	if (err < 0)
		return err;

	FUNC1(KERN_DEBUG, "MicroBookII snd: ", DUMP_PREFIX_NONE, 16, 1,
		       buf, actual_length, false);

	FUNC0(buf, 0, buf_size);

	if (FUNC2(dev, FUNC4(dev, 0x82)))
		return -EINVAL;
	err = FUNC3(dev, FUNC4(dev, 0x82), buf, buf_size,
				&actual_length, 1000);
	if (err < 0)
		return err;

	FUNC1(KERN_DEBUG, "MicroBookII rcv: ", DUMP_PREFIX_NONE, 16, 1,
		       buf, actual_length, false);

	*length = actual_length;
	return 0;
}