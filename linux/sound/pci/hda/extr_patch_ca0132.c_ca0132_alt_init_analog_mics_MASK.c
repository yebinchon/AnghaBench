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
 unsigned int FLOAT_ONE ; 
 unsigned int FLOAT_THREE ; 
 unsigned int FLOAT_ZERO ; 
 int MEM_CONNID_MICIN1 ; 
 int MEM_CONNID_MICIN2 ; 
 int MEM_CONNID_MICOUT1 ; 
 int MEM_CONNID_MICOUT2 ; 
 scalar_t__ QUIRK_R3DI ; 
 int /*<<< orphan*/  SR_96_000 ; 
 scalar_t__ FUNC0 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	unsigned int tmp;

	/* Mic 1 Setup */
	FUNC1(codec, MEM_CONNID_MICIN1, SR_96_000);
	FUNC1(codec, MEM_CONNID_MICOUT1, SR_96_000);
	if (FUNC0(spec) == QUIRK_R3DI) {
		FUNC1(codec, 0x0F, SR_96_000);
		tmp = FLOAT_ONE;
	} else
		tmp = FLOAT_THREE;
	FUNC2(codec, 0x80, 0x00, tmp);

	/* Mic 2 setup (not present on desktop cards) */
	FUNC1(codec, MEM_CONNID_MICIN2, SR_96_000);
	FUNC1(codec, MEM_CONNID_MICOUT2, SR_96_000);
	if (FUNC0(spec) == QUIRK_R3DI)
		FUNC1(codec, 0x0F, SR_96_000);
	tmp = FLOAT_ZERO;
	FUNC2(codec, 0x80, 0x01, tmp);
}