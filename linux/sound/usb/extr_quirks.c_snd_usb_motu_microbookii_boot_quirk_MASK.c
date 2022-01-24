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
struct usb_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  set_samplerate_seq ;
typedef  int /*<<< orphan*/  poll_ready_seq ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MICROBOOK_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct usb_device*,int*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC8(struct usb_device *dev)
{
	int err, actual_length, poll_attempts = 0;
	static const u8 set_samplerate_seq[] = { 0x00, 0x00, 0x00, 0x00,
						 0x00, 0x00, 0x0b, 0x14,
						 0x00, 0x00, 0x00, 0x01 };
	static const u8 poll_ready_seq[] = { 0x00, 0x04, 0x00, 0x00,
					     0x00, 0x00, 0x0b, 0x18 };
	u8 *buf = FUNC3(MICROBOOK_BUF_SIZE, GFP_KERNEL);

	if (!buf)
		return -ENOMEM;

	FUNC1(&dev->dev, "Waiting for MOTU Microbook II to boot up...\n");

	/* First we tell the device which sample rate to use. */
	FUNC4(buf, set_samplerate_seq, sizeof(set_samplerate_seq));
	actual_length = sizeof(set_samplerate_seq);
	err = FUNC7(dev, buf, MICROBOOK_BUF_SIZE,
						   &actual_length);

	if (err < 0) {
		FUNC0(&dev->dev,
			"failed setting the sample rate for Motu MicroBook II: %d\n",
			err);
		goto free_buf;
	}

	/* Then we poll every 100 ms until the device informs of its readiness. */
	while (true) {
		if (++poll_attempts > 100) {
			FUNC0(&dev->dev,
				"failed booting Motu MicroBook II: timeout\n");
			err = -ENODEV;
			goto free_buf;
		}

		FUNC5(buf, 0, MICROBOOK_BUF_SIZE);
		FUNC4(buf, poll_ready_seq, sizeof(poll_ready_seq));

		actual_length = sizeof(poll_ready_seq);
		err = FUNC7(
			dev, buf, MICROBOOK_BUF_SIZE, &actual_length);
		if (err < 0) {
			FUNC0(&dev->dev,
				"failed booting Motu MicroBook II: communication error %d\n",
				err);
			goto free_buf;
		}

		/* the device signals its readiness through a message of the
		 * form
		 *           XX 06 00 00 00 00 0b 18  00 00 00 01
		 * If the device is not yet ready to accept audio data, the
		 * last byte of that sequence is 00.
		 */
		if (actual_length == 12 && buf[actual_length - 1] == 1)
			break;

		FUNC6(100);
	}

	FUNC1(&dev->dev, "MOTU MicroBook II ready\n");

free_buf:
	FUNC2(buf);
	return err;
}