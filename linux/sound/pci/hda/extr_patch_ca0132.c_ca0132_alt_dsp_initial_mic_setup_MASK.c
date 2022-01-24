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
 unsigned int FLOAT_THREE ; 
 int /*<<< orphan*/  MEM_CONNID_MICIN1 ; 
 int /*<<< orphan*/  MEM_CONNID_MICOUT1 ; 
#define  QUIRK_AE5 129 
#define  QUIRK_SBZ 128 
 int /*<<< orphan*/  SR_96_000 ; 
 int FUNC0 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	unsigned int tmp;

	FUNC2(codec, 0x03, 0);
	FUNC2(codec, 0x04, 0);

	FUNC1(codec, MEM_CONNID_MICIN1, SR_96_000);
	FUNC1(codec, MEM_CONNID_MICOUT1, SR_96_000);

	tmp = FLOAT_THREE;
	FUNC4(codec, 0x80, 0x00, tmp);

	FUNC2(codec, 0x03, 1);
	FUNC2(codec, 0x04, 1);

	switch (FUNC0(spec)) {
	case QUIRK_SBZ:
		FUNC3(codec, 0x18b098, 0x0000000c);
		FUNC3(codec, 0x18b09C, 0x0000000c);
		break;
	case QUIRK_AE5:
		FUNC3(codec, 0x18b098, 0x0000000c);
		FUNC3(codec, 0x18b09c, 0x0000004c);
		break;
	default:
		break;
	}
}