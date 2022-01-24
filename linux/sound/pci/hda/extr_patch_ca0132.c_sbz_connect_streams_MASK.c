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
 int /*<<< orphan*/  SR_96_000 ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;

	FUNC6(&spec->chipio_mutex);

	FUNC5(codec, "Connect Streams entered, mutex locked and loaded.\n");

	FUNC1(codec, 0x0C, 6);
	FUNC2(codec, 0x0C, 1);

	/* This value is 0x43 for 96khz, and 0x83 for 192khz. */
	FUNC4(codec, 0x18a020, 0x00000043);

	/* Setup stream 0x14 with it's source and destination points */
	FUNC3(codec, 0x14, 0x48, 0x91);
	FUNC0(codec, 0x48, SR_96_000);
	FUNC0(codec, 0x91, SR_96_000);
	FUNC1(codec, 0x14, 2);
	FUNC2(codec, 0x14, 1);

	FUNC5(codec, "Connect Streams exited, mutex released.\n");

	FUNC7(&spec->chipio_mutex);
}