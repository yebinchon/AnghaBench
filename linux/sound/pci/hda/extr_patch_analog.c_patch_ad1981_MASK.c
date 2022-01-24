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
struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_2__ {int mixer_nid; int beep_nid; } ;
struct ad198x_spec {TYPE_1__ gen; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 int /*<<< orphan*/  ad1981_fixup_tbl ; 
 int /*<<< orphan*/  ad1981_fixups ; 
 int FUNC0 (struct hda_codec*) ; 
 int FUNC1 (struct hda_codec*,int) ; 
 int FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct ad198x_spec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec)
{
	struct ad198x_spec *spec;
	int err;

	err = FUNC2(codec);
	if (err < 0)
		return -ENOMEM;
	spec = codec->spec;

	spec->gen.mixer_nid = 0x0e;
	spec->gen.beep_nid = 0x10;
	FUNC3(spec, 0x0d, 0, HDA_OUTPUT);

	FUNC6(codec, NULL, ad1981_fixup_tbl, ad1981_fixups);
	FUNC4(codec, HDA_FIXUP_ACT_PRE_PROBE);

	err = FUNC1(codec, false);
	if (err < 0)
		goto error;
	err = FUNC0(codec);
	if (err < 0)
		goto error;

	FUNC4(codec, HDA_FIXUP_ACT_PROBE);

	return 0;

 error:
	FUNC5(codec);
	return err;
}