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
struct hda_codec {struct ca0132_spec* spec; } ;
struct TYPE_3__ {int /*<<< orphan*/  sw_kctl; } ;
struct ca0132_spec {int num_mixers; scalar_t__ dig_in; int /*<<< orphan*/  multiout; scalar_t__ dig_out; int /*<<< orphan*/  autocfg; TYPE_1__ vmaster_mute; int /*<<< orphan*/  tlv; int /*<<< orphan*/ * dacs; int /*<<< orphan*/ * mixers; } ;
struct TYPE_4__ {char* name; int direct; int /*<<< orphan*/  nid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYSTAL_VOICE ; 
 int ECHO_CANCELLATION ; 
 int EFX_DIR_OUT ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 int IN_EFFECTS_COUNT ; 
 int IN_EFFECT_START_NID ; 
 int OUT_EFFECTS_COUNT ; 
 int /*<<< orphan*/  PLAY_ENHANCEMENT ; 
 scalar_t__ QUIRK_AE5 ; 
 scalar_t__ QUIRK_ZXR ; 
 int /*<<< orphan*/  XBASS_XOVER ; 
 int FUNC0 (struct hda_codec*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int FUNC4 (struct hda_codec*) ; 
 int FUNC5 (struct hda_codec*) ; 
 int FUNC6 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*) ; 
 int FUNC8 (struct hda_codec*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (struct hda_codec*) ; 
 int FUNC10 (struct hda_codec*) ; 
 int FUNC11 (struct hda_codec*) ; 
 int FUNC12 (struct hda_codec*) ; 
 int /*<<< orphan*/  ca0132_alt_slave_pfxs ; 
 TYPE_2__* ca0132_effects ; 
 scalar_t__ FUNC13 (struct ca0132_spec*) ; 
 scalar_t__ FUNC14 (struct ca0132_spec*) ; 
 scalar_t__ FUNC15 (struct ca0132_spec*) ; 
 scalar_t__ FUNC16 (struct ca0132_spec*) ; 
 int FUNC17 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct hda_codec*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC19 (struct hda_codec*,scalar_t__) ; 
 int FUNC20 (struct hda_codec*,scalar_t__,scalar_t__) ; 
 int FUNC21 (struct hda_codec*,int /*<<< orphan*/ *) ; 
 int FUNC22 (struct hda_codec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC25(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	int i, num_fx, num_sliders;
	int err = 0;

	/* Add Mixer controls */
	for (i = 0; i < spec->num_mixers; i++) {
		err = FUNC17(codec, spec->mixers[i]);
		if (err < 0)
			return err;
	}
	/* Setup vmaster with surround slaves for desktop ca0132 devices */
	if (FUNC15(spec)) {
		FUNC23(codec, spec->dacs[0], HDA_OUTPUT,
					spec->tlv);
		FUNC18(codec, "Master Playback Volume",
					spec->tlv, ca0132_alt_slave_pfxs,
					"Playback Volume");
		err = FUNC0(codec, "Master Playback Switch",
					    NULL, ca0132_alt_slave_pfxs,
					    "Playback Switch",
					    true, &spec->vmaster_mute.sw_kctl);
		if (err < 0)
			return err;
	}

	/* Add in and out effects controls.
	 * VoiceFX, PE and CrystalVoice are added separately.
	 */
	num_fx = OUT_EFFECTS_COUNT + IN_EFFECTS_COUNT;
	for (i = 0; i < num_fx; i++) {
		/* Desktop cards break if Echo Cancellation is used. */
		if (FUNC16(spec)) {
			if (i == (ECHO_CANCELLATION - IN_EFFECT_START_NID +
						OUT_EFFECTS_COUNT))
				continue;
		}

		err = FUNC2(codec, ca0132_effects[i].nid,
				    ca0132_effects[i].name,
				    ca0132_effects[i].direct);
		if (err < 0)
			return err;
	}
	/*
	 * If codec has use_alt_controls set to true, add effect level sliders,
	 * EQ presets, and Smart Volume presets. Also, change names to add FX
	 * prefix, and change PlayEnhancement and CrystalVoice to match.
	 */
	if (FUNC14(spec)) {
		err = FUNC12(codec);
		if (err < 0)
			return err;

		err = FUNC1(codec);
		if (err < 0)
			return err;

		err = FUNC2(codec, PLAY_ENHANCEMENT,
					"Enable OutFX", 0);
		if (err < 0)
			return err;

		err = FUNC2(codec, CRYSTAL_VOICE,
					"Enable InFX", 1);
		if (err < 0)
			return err;

		num_sliders = OUT_EFFECTS_COUNT - 1;
		for (i = 0; i < num_sliders; i++) {
			err = FUNC8(codec,
					    ca0132_effects[i].nid,
					    ca0132_effects[i].name,
					    ca0132_effects[i].direct);
			if (err < 0)
				return err;
		}

		err = FUNC8(codec, XBASS_XOVER,
					"X-Bass Crossover", EFX_DIR_OUT);

		if (err < 0)
			return err;
	} else {
		err = FUNC2(codec, PLAY_ENHANCEMENT,
					"PlayEnhancement", 0);
		if (err < 0)
			return err;

		err = FUNC2(codec, CRYSTAL_VOICE,
					"CrystalVoice", 1);
		if (err < 0)
			return err;
	}
	err = FUNC4(codec);
	if (err < 0)
		return err;

	/*
	 * If the codec uses alt_functions, you need the enumerated controls
	 * to select the new outputs and inputs, plus add the new mic boost
	 * setting control.
	 */
	if (FUNC15(spec)) {
		err = FUNC11(codec);
		if (err < 0)
			return err;
		err = FUNC10(codec);
		if (err < 0)
			return err;
		/*
		 * ZxR only has microphone input, there is no front panel
		 * header on the card, and aux-in is handled by the DBPro board.
		 */
		if (FUNC13(spec) != QUIRK_ZXR) {
			err = FUNC9(codec);
			if (err < 0)
				return err;
		}
	}

	if (FUNC13(spec) == QUIRK_AE5) {
		err = FUNC5(codec);
		if (err < 0)
			return err;
		err = FUNC6(codec);
		if (err < 0)
			return err;
	}

	if (FUNC13(spec) == QUIRK_ZXR) {
		err = FUNC24(codec);
		if (err < 0)
			return err;
	}
#ifdef ENABLE_TUNING_CONTROLS
	add_tuning_ctls(codec);
#endif

	err = FUNC22(codec, &spec->autocfg);
	if (err < 0)
		return err;

	if (spec->dig_out) {
		err = FUNC20(codec, spec->dig_out,
						    spec->dig_out);
		if (err < 0)
			return err;
		err = FUNC21(codec, &spec->multiout);
		if (err < 0)
			return err;
		/* spec->multiout.share_spdif = 1; */
	}

	if (spec->dig_in) {
		err = FUNC19(codec, spec->dig_in);
		if (err < 0)
			return err;
	}

	if (FUNC15(spec))
		FUNC7(codec);

	return 0;
}