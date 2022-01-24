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
struct ca0132_spec {int /*<<< orphan*/  desktop_init_verbs; int /*<<< orphan*/  chip_init_verbs; } ;

/* Variables and functions */
#define  QUIRK_AE5 132 
#define  QUIRK_R3D 131 
#define  QUIRK_R3DI 130 
#define  QUIRK_SBZ 129 
#define  QUIRK_ZXR 128 
 int /*<<< orphan*/  R3DI_DSP_DOWNLOADING ; 
 int VENDOR_CHIPIO_8051_ADDRESS_LOW ; 
 int VENDOR_CHIPIO_PLL_PMU_WRITE ; 
 int /*<<< orphan*/  WIDGET_CHIP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int FUNC4 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC10 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC11 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;

	FUNC1(codec);

	switch (FUNC4(spec)) {
	case QUIRK_SBZ:
		FUNC6(codec, "SBZ alt_init");
		FUNC2(codec);
		FUNC10(codec);
		FUNC12(codec, spec->chip_init_verbs);
		FUNC12(codec, spec->desktop_init_verbs);
		break;
	case QUIRK_R3DI:
		FUNC6(codec, "R3DI alt_init");
		FUNC2(codec);
		FUNC3(codec);
		FUNC8(codec, R3DI_DSP_DOWNLOADING);
		FUNC9(codec);
		FUNC12(codec, spec->chip_init_verbs);
		FUNC11(codec, WIDGET_CHIP_CTRL, 0, 0x6FF, 0xC4);
		break;
	case QUIRK_R3D:
		FUNC7(codec);
		FUNC12(codec, spec->chip_init_verbs);
		FUNC12(codec, spec->desktop_init_verbs);
		break;
	case QUIRK_AE5:
		FUNC2(codec);
		FUNC11(codec, WIDGET_CHIP_CTRL, 0,
				VENDOR_CHIPIO_8051_ADDRESS_LOW, 0x49);
		FUNC11(codec, WIDGET_CHIP_CTRL, 0,
				VENDOR_CHIPIO_PLL_PMU_WRITE, 0x88);
		FUNC5(codec, 0x18b030, 0x00000020);
		FUNC12(codec, spec->chip_init_verbs);
		FUNC12(codec, spec->desktop_init_verbs);
		FUNC0(codec, 0x30, 0x32, 0x3f);
		break;
	case QUIRK_ZXR:
		FUNC12(codec, spec->chip_init_verbs);
		FUNC12(codec, spec->desktop_init_verbs);
		break;
	default:
		break;
	}
}