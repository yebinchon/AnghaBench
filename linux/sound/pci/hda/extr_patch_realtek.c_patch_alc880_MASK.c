#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  unsol_event; } ;
struct hda_codec {TYPE_1__ patch_ops; struct alc_spec* spec; } ;
struct TYPE_4__ {int need_dac_fix; int beep_nid; int /*<<< orphan*/  no_analog; } ;
struct alc_spec {TYPE_2__ gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  alc880_fixup_models ; 
 int /*<<< orphan*/  alc880_fixup_tbl ; 
 int /*<<< orphan*/  alc880_fixups ; 
 int FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  alc880_unsol_event ; 
 int FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int FUNC4 (struct alc_spec*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec)
{
	struct alc_spec *spec;
	int err;

	err = FUNC1(codec, 0x0b);
	if (err < 0)
		return err;

	spec = codec->spec;
	spec->gen.need_dac_fix = 1;
	spec->gen.beep_nid = 0x01;

	codec->patch_ops.unsol_event = alc880_unsol_event;

	FUNC3(codec);

	FUNC6(codec, alc880_fixup_models, alc880_fixup_tbl,
		       alc880_fixups);
	FUNC5(codec, HDA_FIXUP_ACT_PRE_PROBE);

	/* automatic parse from the BIOS config */
	err = FUNC0(codec);
	if (err < 0)
		goto error;

	if (!spec->gen.no_analog) {
		err = FUNC4(spec, 0x0b, 0x05, HDA_INPUT);
		if (err < 0)
			goto error;
	}

	FUNC5(codec, HDA_FIXUP_ACT_PROBE);

	return 0;

 error:
	FUNC2(codec);
	return err;
}