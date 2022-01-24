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
struct snd_usb_caiaqdev {int /*<<< orphan*/  input_dev; } ;

/* Variables and functions */
#define  EP1_CMD_READ_ANALOG 130 
#define  EP1_CMD_READ_ERP 129 
#define  EP1_CMD_READ_IO 128 
 int /*<<< orphan*/  FUNC0 (struct snd_usb_caiaqdev*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_usb_caiaqdev*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_usb_caiaqdev*,char*,unsigned int) ; 

void FUNC3(struct snd_usb_caiaqdev *cdev,
				  char *buf,
				  unsigned int len)
{
	if (!cdev->input_dev || len < 1)
		return;

	switch (buf[0]) {
	case EP1_CMD_READ_ANALOG:
		FUNC0(cdev, buf + 1, len - 1);
		break;
	case EP1_CMD_READ_ERP:
		FUNC1(cdev, buf + 1, len - 1);
		break;
	case EP1_CMD_READ_IO:
		FUNC2(cdev, buf + 1, len - 1);
		break;
	}
}