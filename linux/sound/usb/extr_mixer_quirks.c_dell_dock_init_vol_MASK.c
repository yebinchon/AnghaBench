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
typedef  int /*<<< orphan*/  u16 ;
struct snd_usb_audio {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  UAC_SET_CUR ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_usb_audio *chip, int ch, int id)
{
	u16 buf = 0;

	FUNC0(chip->dev, FUNC2(chip->dev, 0), UAC_SET_CUR,
			USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_OUT,
			ch, FUNC1(chip) | (id << 8),
			&buf, 2);
}