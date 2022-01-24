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
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;

	FUNC4(&spec->chipio_mutex);

	FUNC3(codec, 0x189000, 0x0001f101);
	FUNC3(codec, 0x189004, 0x0001f101);
	FUNC3(codec, 0x189024, 0x00014004);
	FUNC3(codec, 0x189028, 0x0002000f);

	FUNC0(codec, 0x48, 0x0a, 0x05);
	FUNC2(codec, CONTROL_PARAM_ASI, 7);
	FUNC0(codec, 0x48, 0x0b, 0x12);
	FUNC0(codec, 0x48, 0x04, 0x00);
	FUNC0(codec, 0x48, 0x06, 0x48);
	FUNC0(codec, 0x48, 0x0a, 0x05);
	FUNC0(codec, 0x48, 0x07, 0x83);
	FUNC0(codec, 0x48, 0x0f, 0x00);
	FUNC0(codec, 0x48, 0x10, 0x00);
	FUNC1(codec, 0, true);
	FUNC1(codec, 1, true);
	FUNC0(codec, 0x48, 0x07, 0x80);

	FUNC3(codec, 0x18b03c, 0x00000012);

	FUNC0(codec, 0x48, 0x0f, 0x00);
	FUNC0(codec, 0x48, 0x10, 0x00);

	FUNC5(&spec->chipio_mutex);
}