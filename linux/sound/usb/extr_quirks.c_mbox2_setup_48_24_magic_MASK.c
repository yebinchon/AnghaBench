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
 int /*<<< orphan*/  FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int,int**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct usb_device *dev)
{
	u8 srate[3];
	u8 temp[12];

	/* Choose 48000Hz permanently */
	srate[0] = 0x80;
	srate[1] = 0xbb;
	srate[2] = 0x00;

	/* Send the magic! */
	FUNC0(dev, FUNC1(dev, 0),
		0x01, 0x22, 0x0100, 0x0085, &temp, 0x0003);
	FUNC0(dev, FUNC2(dev, 0),
		0x81, 0xa2, 0x0100, 0x0085, &srate, 0x0003);
	FUNC0(dev, FUNC2(dev, 0),
		0x81, 0xa2, 0x0100, 0x0086, &srate, 0x0003);
	FUNC0(dev, FUNC2(dev, 0),
		0x81, 0xa2, 0x0100, 0x0003, &srate, 0x0003);
	return;
}