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
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int MASCHINE_PADS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_usb_caiaqdev *cdev,
					const unsigned char *buf,
					unsigned int len)
{
	unsigned int i, pad_id;
	__le16 *pressure = (__le16 *) buf;

	for (i = 0; i < MASCHINE_PADS; i++) {
		pad_id = FUNC3(*pressure) >> 12;
		FUNC1(cdev->input_dev, FUNC0(pad_id),
				 FUNC3(*pressure) & 0xfff);
		pressure++;
	}

	FUNC2(cdev->input_dev);
}