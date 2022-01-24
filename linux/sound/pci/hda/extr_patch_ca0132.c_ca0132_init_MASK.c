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
struct auto_pin_cfg {int /*<<< orphan*/  dig_in_pin; int /*<<< orphan*/ * dig_out_pins; } ;
struct ca0132_spec {scalar_t__ dsp_state; int dsp_reload; int num_outputs; int num_inputs; int /*<<< orphan*/  spec_init_verbs; int /*<<< orphan*/  chip_init_verbs; int /*<<< orphan*/  dig_in; int /*<<< orphan*/ * adcs; int /*<<< orphan*/ * input_pins; int /*<<< orphan*/  dig_out; int /*<<< orphan*/ * dacs; int /*<<< orphan*/ * out_pins; int /*<<< orphan*/  base_init_verbs; int /*<<< orphan*/  curr_chip_addx; struct auto_pin_cfg autocfg; } ;

/* Variables and functions */
 scalar_t__ DSP_DOWNLOADED ; 
 scalar_t__ DSP_DOWNLOAD_FAILED ; 
 void* DSP_DOWNLOAD_INIT ; 
 int /*<<< orphan*/  INVALID_CHIP_ADDRESS ; 
#define  QUIRK_AE5 132 
#define  QUIRK_R3D 131 
#define  QUIRK_R3DI 130 
#define  QUIRK_SBZ 129 
#define  QUIRK_ZXR 128 
 int /*<<< orphan*/  VENDOR_CHIPIO_PARAM_EX_ID_SET ; 
 int /*<<< orphan*/  VENDOR_CHIPIO_PARAM_EX_VALUE_SET ; 
 int /*<<< orphan*/  WIDGET_CHIP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC9 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC10 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC11 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC12 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC13 (struct hda_codec*) ; 
 int FUNC14 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  FUNC15 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC16 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC17 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC18 (struct hda_codec*) ; 
 scalar_t__ FUNC19 (struct ca0132_spec*) ; 
 scalar_t__ FUNC20 (struct ca0132_spec*) ; 
 int FUNC21 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC22 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC25 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC26 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC27 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC29 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC30 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC31 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC32(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	struct auto_pin_cfg *cfg = &spec->autocfg;
	int i;
	bool dsp_loaded;

	/*
	 * If the DSP is already downloaded, and init has been entered again,
	 * there's only two reasons for it. One, the codec has awaken from a
	 * suspended state, and in that case dspload_is_loaded will return
	 * false, and the init will be ran again. The other reason it gets
	 * re entered is on startup for some reason it triggers a suspend and
	 * resume state. In this case, it will check if the DSP is downloaded,
	 * and not run the init function again. For codecs using alt_functions,
	 * it will check if the DSP is loaded properly.
	 */
	if (spec->dsp_state == DSP_DOWNLOADED) {
		dsp_loaded = FUNC21(codec);
		if (!dsp_loaded) {
			spec->dsp_reload = true;
			spec->dsp_state = DSP_DOWNLOAD_INIT;
		} else {
			if (FUNC14(spec) == QUIRK_SBZ)
				FUNC25(codec);
			return 0;
		}
	}

	if (spec->dsp_state != DSP_DOWNLOAD_FAILED)
		spec->dsp_state = DSP_DOWNLOAD_INIT;
	spec->curr_chip_addx = INVALID_CHIP_ADDRESS;

	if (FUNC20(spec))
		FUNC12(codec);

	FUNC30(codec);

	if (FUNC14(spec) == QUIRK_AE5)
		FUNC0(codec);

	FUNC11(codec);
	FUNC10(codec);
	FUNC9(codec);

	FUNC31(codec, spec->base_init_verbs);

	if (FUNC19(spec))
		FUNC2(codec);

	FUNC5(codec);

	FUNC15(codec);

	switch (FUNC14(spec)) {
	case QUIRK_R3DI:
	case QUIRK_R3D:
		FUNC24(codec);
		break;
	case QUIRK_SBZ:
	case QUIRK_ZXR:
		FUNC26(codec);
		break;
	case QUIRK_AE5:
		FUNC1(codec);
		break;
	default:
		FUNC18(codec);
		FUNC7(codec);
		FUNC8(codec);
		break;
	}

	for (i = 0; i < spec->num_outputs; i++)
		FUNC23(codec, spec->out_pins[i], spec->dacs[0]);

	FUNC23(codec, cfg->dig_out_pins[0], spec->dig_out);

	for (i = 0; i < spec->num_inputs; i++)
		FUNC22(codec, spec->input_pins[i], spec->adcs[i]);

	FUNC22(codec, cfg->dig_in_pin, spec->dig_in);

	if (!FUNC19(spec)) {
		FUNC31(codec, spec->chip_init_verbs);
		FUNC27(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_PARAM_EX_ID_SET, 0x0D);
		FUNC27(codec, WIDGET_CHIP_CTRL, 0,
			    VENDOR_CHIPIO_PARAM_EX_VALUE_SET, 0x20);
	}

	if (FUNC14(spec) == QUIRK_SBZ)
		FUNC6(codec);

	FUNC31(codec, spec->spec_init_verbs);
	if (FUNC19(spec)) {
		FUNC4(codec);
		FUNC3(codec);
	} else {
		FUNC17(codec);
		FUNC16(codec);
	}

	FUNC28(codec);

	/*
	 * Re set the PlayEnhancement switch on a resume event, because the
	 * controls will not be reloaded.
	 */
	if (spec->dsp_reload) {
		spec->dsp_reload = false;
		FUNC13(codec);
	}

	FUNC29(codec);

	return 0;
}