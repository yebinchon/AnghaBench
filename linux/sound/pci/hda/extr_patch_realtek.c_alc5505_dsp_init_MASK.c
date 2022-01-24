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
 int /*<<< orphan*/  AC_VERB_SET_CODEC_RESET ; 
 int FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec)
{
	unsigned int val;

	FUNC3(codec);
	FUNC2(codec);
	FUNC1(codec, 0x61b0, 0x5b14); /* PLL1 control */
	FUNC1(codec, 0x61b0, 0x5b16);
	FUNC1(codec, 0x61b4, 0x04132b00); /* PLL2 control */
	FUNC1(codec, 0x61b4, 0x04132b02);
	FUNC1(codec, 0x61b8, 0x041f3300); /* PLL3 control*/
	FUNC1(codec, 0x61b8, 0x041f3302);
	FUNC4(codec, 0x51, 0, AC_VERB_SET_CODEC_RESET, 0); /* Function reset */
	FUNC1(codec, 0x61b8, 0x041b3302);
	FUNC1(codec, 0x61b8, 0x04173302);
	FUNC1(codec, 0x61b8, 0x04163302);
	FUNC1(codec, 0x8800, 0x348b328b); /* DRAM control */
	FUNC1(codec, 0x8808, 0x00020022); /* DRAM control */
	FUNC1(codec, 0x8818, 0x00000400); /* DRAM control */

	val = FUNC0(codec, 0x6200) >> 16; /* Read revision ID */
	if (val <= 3)
		FUNC1(codec, 0x6220, 0x2002010f); /* I/O PAD Configuration */
	else
		FUNC1(codec, 0x6220, 0x6002018f);

	FUNC1(codec, 0x61ac, 0x055525f0); /**/
	FUNC1(codec, 0x61c0, 0x12230080); /* Clock control */
	FUNC1(codec, 0x61b4, 0x040e2b02); /* PLL2 control */
	FUNC1(codec, 0x61bc, 0x010234f8); /* OSC Control */
	FUNC1(codec, 0x880c, 0x00000004); /* DRAM Function control */
	FUNC1(codec, 0x880c, 0x00000003);
	FUNC1(codec, 0x880c, 0x00000010);

#ifdef HALT_REALTEK_ALC5505
	alc5505_dsp_halt(codec);
#endif
}