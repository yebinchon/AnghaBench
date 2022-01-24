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
struct ca0132_spec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_GPIO_DATA ; 
 int /*<<< orphan*/  AC_VERB_SET_GPIO_DIRECTION ; 
 int /*<<< orphan*/  AC_VERB_SET_GPIO_MASK ; 
#define  QUIRK_R3DI 129 
#define  QUIRK_SBZ 128 
 int FUNC0 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;

	switch (FUNC0(spec)) {
	case QUIRK_SBZ:
		FUNC1(codec, 0x01, 0,
				AC_VERB_SET_GPIO_DIRECTION, 0x07);
		FUNC1(codec, 0x01, 0,
				AC_VERB_SET_GPIO_MASK, 0x07);
		FUNC1(codec, 0x01, 0,
				AC_VERB_SET_GPIO_DATA, 0x04);
		FUNC1(codec, 0x01, 0,
				AC_VERB_SET_GPIO_DATA, 0x06);
		break;
	case QUIRK_R3DI:
		FUNC1(codec, 0x01, 0,
				AC_VERB_SET_GPIO_DIRECTION, 0x1E);
		FUNC1(codec, 0x01, 0,
				AC_VERB_SET_GPIO_MASK, 0x1F);
		FUNC1(codec, 0x01, 0,
				AC_VERB_SET_GPIO_DATA, 0x0C);
		break;
	default:
		break;
	}
}