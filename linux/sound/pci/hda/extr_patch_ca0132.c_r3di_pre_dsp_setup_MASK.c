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
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_PIN_WIDGET_CONTROL ; 
 int /*<<< orphan*/  VENDOR_CHIPIO_8051_ADDRESS_HIGH ; 
 int /*<<< orphan*/  VENDOR_CHIPIO_8051_ADDRESS_LOW ; 
 int /*<<< orphan*/  VENDOR_CHIPIO_8051_DATA_WRITE ; 
 int WIDGET_CHIP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	FUNC0(codec, 0x18b0a4, 0x000000c2);

	FUNC1(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x1E);
	FUNC1(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_HIGH, 0x1C);
	FUNC1(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_DATA_WRITE, 0x5B);

	FUNC1(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x20);
	FUNC1(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_HIGH, 0x19);
	FUNC1(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_DATA_WRITE, 0x00);
	FUNC1(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_DATA_WRITE, 0x40);

	FUNC1(codec, 0x11, 0,
			AC_VERB_SET_PIN_WIDGET_CONTROL, 0x04);
}