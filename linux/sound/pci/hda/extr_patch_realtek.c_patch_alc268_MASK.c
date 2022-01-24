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
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_3__ {int* speaker_pins; } ;
struct TYPE_4__ {int beep_nid; TYPE_1__ autocfg; int /*<<< orphan*/  no_analog; } ;
struct alc_spec {TYPE_2__ gen; int /*<<< orphan*/  shutup; } ;

/* Variables and functions */
 int AC_AMPCAP_MUTE_SHIFT ; 
 int AC_AMPCAP_NUM_STEPS_SHIFT ; 
 int AC_AMPCAP_OFFSET_SHIFT ; 
 int AC_AMPCAP_STEP_SIZE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  alc268_beep_init_verbs ; 
 int /*<<< orphan*/ * alc268_beep_mixer ; 
 int /*<<< orphan*/  alc268_fixup_models ; 
 int /*<<< orphan*/  alc268_fixup_tbl ; 
 int /*<<< orphan*/  alc268_fixups ; 
 int FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alc_eapd_shutup ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 scalar_t__ FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct hda_codec*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct hda_codec *codec)
{
	struct alc_spec *spec;
	int i, err;

	/* ALC268 has no aa-loopback mixer */
	err = FUNC2(codec, 0);
	if (err < 0)
		return err;

	spec = codec->spec;
	if (FUNC5(codec))
		spec->gen.beep_nid = 0x01;

	spec->shutup = alc_eapd_shutup;

	FUNC4(codec);

	FUNC11(codec, alc268_fixup_models, alc268_fixup_tbl, alc268_fixups);
	FUNC8(codec, HDA_FIXUP_ACT_PRE_PROBE);

	/* automatic parse from the BIOS config */
	err = FUNC1(codec);
	if (err < 0)
		goto error;

	if (err > 0 && !spec->gen.no_analog &&
	    spec->gen.autocfg.speaker_pins[0] != 0x1d) {
		for (i = 0; i < FUNC0(alc268_beep_mixer); i++) {
			if (!FUNC9(&spec->gen, NULL,
						  &alc268_beep_mixer[i])) {
				err = -ENOMEM;
				goto error;
			}
		}
		FUNC7(codec, alc268_beep_init_verbs);
		if (!FUNC6(codec, 0x1d, HDA_INPUT))
			/* override the amp caps for beep generator */
			FUNC10(codec, 0x1d, HDA_INPUT,
					  (0x0c << AC_AMPCAP_OFFSET_SHIFT) |
					  (0x0c << AC_AMPCAP_NUM_STEPS_SHIFT) |
					  (0x07 << AC_AMPCAP_STEP_SIZE_SHIFT) |
					  (0 << AC_AMPCAP_MUTE_SHIFT));
	}

	FUNC8(codec, HDA_FIXUP_ACT_PROBE);

	return 0;

 error:
	FUNC3(codec);
	return err;
}