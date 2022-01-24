#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mixer_nid; } ;
struct via_spec {TYPE_1__ gen; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 struct via_spec* FUNC4 (struct hda_codec*) ; 
 int FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  vt1812_init_verbs ; 

__attribute__((used)) static int FUNC6(struct hda_codec *codec)
{
	struct via_spec *spec;
	int err;

	/* create a codec specific record */
	spec = FUNC4(codec);
	if (spec == NULL)
		return -ENOMEM;

	spec->gen.mixer_nid = 0x21;
	FUNC1(codec, 0x2b, 0, 3, 40);
	FUNC1(codec, 0x29, 0, 3, 40);
	FUNC0(codec);

	err = FUNC2(codec, vt1812_init_verbs);
	if (err < 0)
		goto error;

	/* automatic parse from the BIOS config */
	err = FUNC5(codec);
	if (err < 0)
		goto error;

	return 0;

 error:
	FUNC3(codec);
	return err;
}