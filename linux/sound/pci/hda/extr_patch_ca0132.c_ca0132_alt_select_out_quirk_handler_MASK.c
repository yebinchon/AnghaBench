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
struct ca0132_spec {int cur_out_type; int ae5_headphone_gain_val; int /*<<< orphan*/  zxr_gain_set; } ;

/* Variables and functions */
 unsigned int FLOAT_ONE ; 
 unsigned int FLOAT_ZERO ; 
#define  HEADPHONE_OUT 135 
#define  QUIRK_AE5 134 
#define  QUIRK_R3D 133 
#define  QUIRK_R3DI 132 
#define  QUIRK_SBZ 131 
#define  QUIRK_ZXR 130 
 int /*<<< orphan*/  R3DI_HEADPHONE_OUT ; 
 int /*<<< orphan*/  R3DI_LINE_OUT ; 
#define  SPEAKER_OUT 129 
#define  SURROUND_OUT 128 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	unsigned int tmp;

	switch (spec->cur_out_type) {
	case SPEAKER_OUT:
		switch (FUNC3(spec)) {
		case QUIRK_SBZ:
			FUNC2(codec, 7, false);
			FUNC2(codec, 4, true);
			FUNC2(codec, 1, true);
			FUNC4(codec, 0x0d, 0x18);
			break;
		case QUIRK_ZXR:
			FUNC2(codec, 2, true);
			FUNC2(codec, 3, true);
			FUNC2(codec, 5, false);
			FUNC8(codec, 0);
			FUNC4(codec, 0x0d, 0x24);
			break;
		case QUIRK_R3DI:
			FUNC4(codec, 0x0d, 0x24);
			FUNC7(codec, R3DI_LINE_OUT);
			break;
		case QUIRK_R3D:
			FUNC4(codec, 0x0d, 0x24);
			FUNC2(codec, 1, true);
			break;
		case QUIRK_AE5:
			FUNC1(codec);
			FUNC0(codec, 2);
			tmp = FLOAT_ZERO;
			FUNC6(codec, 0x96, 0x29, tmp);
			FUNC6(codec, 0x96, 0x2a, tmp);
			FUNC4(codec, 0x0d, 0xa4);
			FUNC5(codec, 0x18b03c, 0x00000012);
			break;
		default:
			break;
		}
		break;
	case HEADPHONE_OUT:
		switch (FUNC3(spec)) {
		case QUIRK_SBZ:
			FUNC2(codec, 7, true);
			FUNC2(codec, 4, true);
			FUNC2(codec, 1, false);
			FUNC4(codec, 0x0d, 0x12);
			break;
		case QUIRK_ZXR:
			FUNC2(codec, 2, false);
			FUNC2(codec, 3, false);
			FUNC2(codec, 5, true);
			FUNC8(codec, spec->zxr_gain_set);
			FUNC4(codec, 0x0d, 0x21);
			break;
		case QUIRK_R3DI:
			FUNC4(codec, 0x0d, 0x21);
			FUNC7(codec, R3DI_HEADPHONE_OUT);
			break;
		case QUIRK_R3D:
			FUNC4(codec, 0x0d, 0x21);
			FUNC2(codec, 0x1, false);
			break;
		case QUIRK_AE5:
			FUNC1(codec);
			FUNC0(codec,
					spec->ae5_headphone_gain_val);
			tmp = FLOAT_ONE;
			FUNC6(codec, 0x96, 0x29, tmp);
			FUNC6(codec, 0x96, 0x2a, tmp);
			FUNC4(codec, 0x0d, 0xa1);
			FUNC5(codec, 0x18b03c, 0x00000012);
			break;
		default:
			break;
		}
		break;
	case SURROUND_OUT:
		switch (FUNC3(spec)) {
		case QUIRK_SBZ:
			FUNC2(codec, 7, false);
			FUNC2(codec, 4, true);
			FUNC2(codec, 1, true);
			FUNC4(codec, 0x0d, 0x18);
			break;
		case QUIRK_ZXR:
			FUNC2(codec, 2, true);
			FUNC2(codec, 3, true);
			FUNC2(codec, 5, false);
			FUNC8(codec, 0);
			FUNC4(codec, 0x0d, 0x24);
			break;
		case QUIRK_R3DI:
			FUNC4(codec, 0x0d, 0x24);
			FUNC7(codec, R3DI_LINE_OUT);
			break;
		case QUIRK_R3D:
			FUNC2(codec, 1, true);
			FUNC4(codec, 0x0d, 0x24);
			break;
		case QUIRK_AE5:
			FUNC1(codec);
			FUNC0(codec, 2);
			tmp = FLOAT_ZERO;
			FUNC6(codec, 0x96, 0x29, tmp);
			FUNC6(codec, 0x96, 0x2a, tmp);
			FUNC4(codec, 0x0d, 0xa4);
			FUNC5(codec, 0x18b03c, 0x00000012);
			break;
		default:
			break;
		}
		break;
	}
}