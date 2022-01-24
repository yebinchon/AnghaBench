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
 int /*<<< orphan*/  AC_VERB_SET_EAPD_BTLENABLE ; 
 int /*<<< orphan*/  SR_192_000 ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct hda_codec *codec)
{
	FUNC3(codec, 0x03, 0);
	FUNC3(codec, 0x04, 0);

	/* Mess with GPIO */
	FUNC5(codec, 0x07, 0x07, -1);
	FUNC5(codec, 0x07, 0x07, 0x05);
	FUNC5(codec, 0x07, 0x07, 0x01);

	FUNC3(codec, 0x14, 0);
	FUNC3(codec, 0x0C, 0);

	FUNC1(codec, 0x41, SR_192_000);
	FUNC1(codec, 0x91, SR_192_000);

	FUNC4(codec, 0x18a020, 0x00000083);

	FUNC5(codec, 0x07, 0x07, 0x03);
	FUNC5(codec, 0x07, 0x07, 0x07);
	FUNC5(codec, 0x07, 0x07, 0x06);

	FUNC3(codec, 0x0C, 0);

	FUNC2(codec, 0x0D, 0x24);

	FUNC0(codec);
	FUNC7(codec);

	FUNC8(codec, 0x0B, 0,
		AC_VERB_SET_EAPD_BTLENABLE, 0x00);

	FUNC6(codec);
}