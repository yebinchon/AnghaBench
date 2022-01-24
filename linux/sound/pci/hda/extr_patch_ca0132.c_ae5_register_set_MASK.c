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
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {scalar_t__ mem_base; } ;

/* Variables and functions */
 int VENDOR_CHIPIO_8051_ADDRESS_LOW ; 
 int VENDOR_CHIPIO_PLL_PMU_WRITE ; 
 int WIDGET_CHIP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;

	FUNC1(codec, 0x93, 0x10);
	FUNC3(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x44);
	FUNC3(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_PLL_PMU_WRITE, 0xc2);

	FUNC4(0x0f, spec->mem_base + 0x304);
	FUNC4(0x0f, spec->mem_base + 0x304);
	FUNC4(0x0f, spec->mem_base + 0x304);
	FUNC4(0x0f, spec->mem_base + 0x304);
	FUNC4(0x0e, spec->mem_base + 0x100);
	FUNC4(0x1f, spec->mem_base + 0x304);
	FUNC4(0x0c, spec->mem_base + 0x100);
	FUNC4(0x3f, spec->mem_base + 0x304);
	FUNC4(0x08, spec->mem_base + 0x100);
	FUNC4(0x7f, spec->mem_base + 0x304);
	FUNC4(0x00, spec->mem_base + 0x100);
	FUNC4(0xff, spec->mem_base + 0x304);

	FUNC0(codec, 0x30, 0x2d, 0x3f);

	FUNC1(codec, 0x90, 0x00);
	FUNC1(codec, 0x90, 0x10);

	FUNC0(codec, 0x48, 0x07, 0x83);

	FUNC2(codec, 0x18b0a4, 0x000000c2);

	FUNC3(codec, 0x01, 0, 0x7ff, 0x00);
	FUNC3(codec, 0x01, 0, 0x7ff, 0x00);
}