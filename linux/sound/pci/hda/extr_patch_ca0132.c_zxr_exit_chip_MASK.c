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
 int AC_VERB_SET_EAPD_BTLENABLE ; 
 int /*<<< orphan*/  SR_192_000 ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(struct hda_codec *codec)
{
	FUNC3(codec, 0x03, 0);
	FUNC3(codec, 0x04, 0);
	FUNC3(codec, 0x14, 0);
	FUNC3(codec, 0x0C, 0);

	FUNC2(codec, 0x41, SR_192_000);
	FUNC2(codec, 0x91, SR_192_000);

	FUNC4(codec, 0x18a020, 0x00000083);

	FUNC6(codec, 0x01, 0, 0x793, 0x00);
	FUNC6(codec, 0x01, 0, 0x794, 0x53);

	FUNC1(codec);
	FUNC5(codec);
	FUNC6(codec, 0x0B, 0, AC_VERB_SET_EAPD_BTLENABLE, 0x00);

	FUNC0(codec, 5, false);
	FUNC0(codec, 2, false);
	FUNC0(codec, 3, false);
	FUNC0(codec, 0, false);
	FUNC0(codec, 4, true);
	FUNC0(codec, 0, true);
	FUNC0(codec, 5, true);
	FUNC0(codec, 2, false);
	FUNC0(codec, 3, false);
}