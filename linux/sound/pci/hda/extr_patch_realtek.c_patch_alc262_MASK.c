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
struct TYPE_2__ {int shared_mic_vref_pin; int beep_nid; int /*<<< orphan*/  no_analog; } ;
struct alc_spec {TYPE_1__ gen; int /*<<< orphan*/  shutup; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  alc262_fixup_models ; 
 int /*<<< orphan*/  alc262_fixup_tbl ; 
 int /*<<< orphan*/  alc262_fixups ; 
 int FUNC0 (struct hda_codec*) ; 
 int FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  alc_eapd_shutup ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct hda_codec*) ; 
 int FUNC8 (struct alc_spec*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct hda_codec *codec)
{
	struct alc_spec *spec;
	int err;

	err = FUNC1(codec, 0x0b);
	if (err < 0)
		return err;

	spec = codec->spec;
	spec->gen.shared_mic_vref_pin = 0x18;

	spec->shutup = alc_eapd_shutup;

#if 0
	/* pshou 07/11/05  set a zero PCM sample to DAC when FIFO is
	 * under-run
	 */
	alc_update_coefex_idx(codec, 0x1a, 7, 0, 0x80);
#endif
	FUNC3(codec, 0x20, 0x0a, 10);

	FUNC5(codec);

	FUNC10(codec, alc262_fixup_models, alc262_fixup_tbl,
		       alc262_fixups);
	FUNC9(codec, HDA_FIXUP_ACT_PRE_PROBE);

	FUNC2(codec);

	if (FUNC7(codec))
		spec->gen.beep_nid = 0x01;

	/* automatic parse from the BIOS config */
	err = FUNC0(codec);
	if (err < 0)
		goto error;

	if (!spec->gen.no_analog && spec->gen.beep_nid) {
		err = FUNC8(spec, 0x0b, 0x05, HDA_INPUT);
		if (err < 0)
			goto error;
	}

	FUNC9(codec, HDA_FIXUP_ACT_PROBE);

	return 0;

 error:
	FUNC4(codec);
	return err;
}