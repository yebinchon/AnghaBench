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
 int /*<<< orphan*/  VENDOR_CHIPIO_8051_ADDRESS_LOW ; 
 int /*<<< orphan*/  VENDOR_CHIPIO_PLL_PMU_WRITE ; 
 int /*<<< orphan*/  WIDGET_CHIP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct hda_codec *codec)
{
	FUNC0(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x41);
	FUNC0(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_PLL_PMU_WRITE, 0xc8);

	FUNC0(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x45);
	FUNC0(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_PLL_PMU_WRITE, 0xcc);

	FUNC0(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x40);
	FUNC0(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_PLL_PMU_WRITE, 0xcb);

	FUNC0(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x43);
	FUNC0(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_PLL_PMU_WRITE, 0xc7);

	FUNC0(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x51);
	FUNC0(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_PLL_PMU_WRITE, 0x8d);
}