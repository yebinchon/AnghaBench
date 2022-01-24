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
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int prefer_hp_amp; int beep_nid; int /*<<< orphan*/  no_analog; } ;
struct alc_spec {TYPE_1__ gen; int /*<<< orphan*/  shutup; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  alc260_fixup_models ; 
 int /*<<< orphan*/  alc260_fixup_tbl ; 
 int /*<<< orphan*/  alc260_fixups ; 
 int FUNC0 (struct hda_codec*) ; 
 int FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  alc_eapd_shutup ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int FUNC4 (struct alc_spec*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec)
{
	struct alc_spec *spec;
	int err;

	err = FUNC1(codec, 0x07);
	if (err < 0)
		return err;

	spec = codec->spec;
	/* as quite a few machines require HP amp for speaker outputs,
	 * it's easier to enable it unconditionally; even if it's unneeded,
	 * it's almost harmless.
	 */
	spec->gen.prefer_hp_amp = 1;
	spec->gen.beep_nid = 0x01;

	spec->shutup = alc_eapd_shutup;

	FUNC3(codec);

	FUNC6(codec, alc260_fixup_models, alc260_fixup_tbl,
			   alc260_fixups);
	FUNC5(codec, HDA_FIXUP_ACT_PRE_PROBE);

	/* automatic parse from the BIOS config */
	err = FUNC0(codec);
	if (err < 0)
		goto error;

	if (!spec->gen.no_analog) {
		err = FUNC4(spec, 0x07, 0x05, HDA_INPUT);
		if (err < 0)
			goto error;
	}

	FUNC5(codec, HDA_FIXUP_ACT_PROBE);

	return 0;

 error:
	FUNC2(codec);
	return err;
}