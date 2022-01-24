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
struct ca0132_spec {int /*<<< orphan*/  chipio_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_PARAM_ASI ; 
 int /*<<< orphan*/  SR_96_000 ; 
 int VENDOR_CHIPIO_8051_ADDRESS_LOW ; 
 int VENDOR_CHIPIO_PLL_PMU_WRITE ; 
 int /*<<< orphan*/  WIDGET_CHIP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC9(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;

	FUNC6(&spec->chipio_mutex);

	FUNC8(codec, WIDGET_CHIP_CTRL, 0, 0x725, 0x81);

	FUNC1(codec, 0x70, SR_96_000);

	FUNC3(codec, 0x0C, 6);
	FUNC4(codec, 0x0C, 1);

	FUNC5(codec, 0x5, 0x43, 0x0);

	FUNC5(codec, 0x18, 0x9, 0xd0);
	FUNC1(codec, 0xd0, SR_96_000);
	FUNC3(codec, 0x18, 6);
	FUNC4(codec, 0x18, 1);

	FUNC2(codec, CONTROL_PARAM_ASI, 4);

	FUNC8(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x43);
	FUNC8(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_PLL_PMU_WRITE, 0xc7);

	FUNC0(codec, 0x48, 0x01, 0x80);

	FUNC7(&spec->chipio_mutex);
}