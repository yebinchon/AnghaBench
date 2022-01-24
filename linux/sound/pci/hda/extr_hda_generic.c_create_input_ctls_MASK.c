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
struct auto_pin_cfg {int num_inputs; TYPE_1__* inputs; } ;
struct hda_gen_spec {scalar_t__ mixer_nid; scalar_t__ hp_mic_pin; char** input_labels; scalar_t__ add_stereo_mix_input; int suppress_auto_mic; scalar_t__ add_jack_modes; int /*<<< orphan*/ * input_label_idxs; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;
struct TYPE_2__ {scalar_t__ pin; scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ AUTO_PIN_MIC ; 
 int CFG_IDX_MIX ; 
 scalar_t__ HDA_HINT_STEREO_MIX_ENABLE ; 
 unsigned int PIN_IN ; 
 int FUNC0 (struct hda_codec*,scalar_t__) ; 
 int FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct hda_codec*,scalar_t__,scalar_t__) ; 
 int FUNC5 (struct hda_codec*,int,scalar_t__,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (struct hda_codec*,scalar_t__,int,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,scalar_t__,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,scalar_t__) ; 
 unsigned int FUNC9 (struct hda_codec*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct hda_codec *codec)
{
	struct hda_gen_spec *spec = codec->spec;
	const struct auto_pin_cfg *cfg = &spec->autocfg;
	hda_nid_t mixer = spec->mixer_nid;
	int num_adcs;
	int i, err;
	unsigned int val;

	num_adcs = FUNC1(codec);
	if (num_adcs < 0)
		return 0;

	err = FUNC2(codec);
	if (err < 0)
		return err;

	for (i = 0; i < cfg->num_inputs; i++) {
		hda_nid_t pin;

		pin = cfg->inputs[i].pin;
		if (!FUNC3(codec, pin))
			continue;

		val = PIN_IN;
		if (cfg->inputs[i].type == AUTO_PIN_MIC)
			val |= FUNC9(codec, pin);
		if (pin != spec->hp_mic_pin &&
		    !FUNC8(codec, pin))
			FUNC7(codec, pin, val, false);

		if (mixer) {
			if (FUNC4(codec, pin, mixer)) {
				err = FUNC5(codec, i, pin,
						       spec->input_labels[i],
						       spec->input_label_idxs[i],
						       mixer);
				if (err < 0)
					return err;
			}
		}

		err = FUNC6(codec, pin, i, num_adcs,
					   spec->input_labels[i], -mixer);
		if (err < 0)
			return err;

		if (spec->add_jack_modes) {
			err = FUNC0(codec, pin);
			if (err < 0)
				return err;
		}
	}

	/* add stereo mix when explicitly enabled via hint */
	if (mixer && spec->add_stereo_mix_input == HDA_HINT_STEREO_MIX_ENABLE) {
		err = FUNC6(codec, mixer, CFG_IDX_MIX, num_adcs,
					   "Stereo Mix", 0);
		if (err < 0)
			return err;
		else
			spec->suppress_auto_mic = 1;
	}

	return 0;
}