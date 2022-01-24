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
 scalar_t__ QUIRK_SBZ ; 
 scalar_t__ QUIRK_ZXR ; 
 scalar_t__ FUNC0 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;

	FUNC5(&spec->chipio_mutex);
	FUNC4(codec, "Startup Data entered, mutex locked and loaded.\n");

	/* These control audio output */
	FUNC3(codec, 0x190060, 0x0001f8c0);
	FUNC3(codec, 0x190064, 0x0001f9c1);
	FUNC3(codec, 0x190068, 0x0001fac6);
	FUNC3(codec, 0x19006c, 0x0001fbc7);
	/* Signal to update I think */
	FUNC3(codec, 0x19042c, 0x00000001);

	FUNC1(codec, 0x0C, 6);
	FUNC2(codec, 0x0C, 1);
	/* No clue what these control */
	if (FUNC0(spec) == QUIRK_SBZ) {
		FUNC3(codec, 0x190030, 0x0001e0c0);
		FUNC3(codec, 0x190034, 0x0001e1c1);
		FUNC3(codec, 0x190038, 0x0001e4c2);
		FUNC3(codec, 0x19003c, 0x0001e5c3);
		FUNC3(codec, 0x190040, 0x0001e2c4);
		FUNC3(codec, 0x190044, 0x0001e3c5);
		FUNC3(codec, 0x190048, 0x0001e8c6);
		FUNC3(codec, 0x19004c, 0x0001e9c7);
		FUNC3(codec, 0x190050, 0x0001ecc8);
		FUNC3(codec, 0x190054, 0x0001edc9);
		FUNC3(codec, 0x190058, 0x0001eaca);
		FUNC3(codec, 0x19005c, 0x0001ebcb);
	} else if (FUNC0(spec) == QUIRK_ZXR) {
		FUNC3(codec, 0x190038, 0x000140c2);
		FUNC3(codec, 0x19003c, 0x000141c3);
		FUNC3(codec, 0x190040, 0x000150c4);
		FUNC3(codec, 0x190044, 0x000151c5);
		FUNC3(codec, 0x190050, 0x000142c8);
		FUNC3(codec, 0x190054, 0x000143c9);
		FUNC3(codec, 0x190058, 0x000152ca);
		FUNC3(codec, 0x19005c, 0x000153cb);
	}
	FUNC3(codec, 0x19042c, 0x00000001);

	FUNC4(codec, "Startup Data exited, mutex released.\n");
	FUNC6(&spec->chipio_mutex);
}