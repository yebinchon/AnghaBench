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
 int /*<<< orphan*/  CONTROL_PARAM_ASI ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec)
{
	FUNC3(codec, 0x03, 0);
	FUNC3(codec, 0x04, 0);

	FUNC0(codec, 0x30, 0x32, 0x3f);
	FUNC0(codec, 0x48, 0x07, 0x83);
	FUNC0(codec, 0x48, 0x07, 0x83);
	FUNC0(codec, 0x30, 0x30, 0x00);
	FUNC0(codec, 0x30, 0x2b, 0x00);
	FUNC0(codec, 0x30, 0x2d, 0x00);
	FUNC1(codec, 0, false);
	FUNC1(codec, 1, false);

	FUNC4(codec, 0x01, 0, 0x793, 0x00);
	FUNC4(codec, 0x01, 0, 0x794, 0x53);

	FUNC2(codec, CONTROL_PARAM_ASI, 0);

	FUNC3(codec, 0x18, 0);
	FUNC3(codec, 0x0c, 0);

	FUNC4(codec, 0x01, 0, 0x724, 0x83);
}