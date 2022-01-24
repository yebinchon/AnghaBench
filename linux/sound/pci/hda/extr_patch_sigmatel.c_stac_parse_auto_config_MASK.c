#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hook; } ;
struct TYPE_7__ {scalar_t__ beep_nid; TYPE_2__ vmaster_mute; int /*<<< orphan*/  autocfg; int /*<<< orphan*/  automute_hook; int /*<<< orphan*/  pcm_capture_hook; int /*<<< orphan*/  pcm_playback_hook; } ;
struct sigmatel_spec {scalar_t__ anabeep_nid; scalar_t__ have_spdif_mux; TYPE_4__* aloopback_ctl; TYPE_3__ gen; scalar_t__ gpio_led; int /*<<< orphan*/  linear_tone_beep; scalar_t__ vref_mute_led_nid; scalar_t__ headset_jack; } ;
struct hda_codec {int /*<<< orphan*/  core; TYPE_1__* beep; struct sigmatel_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;
struct TYPE_8__ {int private_value; } ;
struct TYPE_5__ {int /*<<< orphan*/  linear_tone; } ;

/* Variables and functions */
 unsigned int AC_AMPCAP_MUTE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 int HDA_PINCFG_HEADSET_MIC ; 
 unsigned int FUNC0 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC2 (struct hda_codec*,scalar_t__) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct hda_codec*,char*) ; 
 int FUNC5 (struct hda_codec*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC7 (struct hda_codec*,scalar_t__) ; 
 int FUNC8 (struct hda_codec*) ; 
 int /*<<< orphan*/  stac_capture_pcm_hook ; 
 int FUNC9 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC10 (struct hda_codec*) ; 
 int /*<<< orphan*/  stac_playback_pcm_hook ; 
 int /*<<< orphan*/  stac_update_outputs ; 
 int /*<<< orphan*/  stac_vmaster_hook ; 

__attribute__((used)) static int FUNC11(struct hda_codec *codec)
{
	struct sigmatel_spec *spec = codec->spec;
	int err;
	int flags = 0;

	if (spec->headset_jack)
		flags |= HDA_PINCFG_HEADSET_MIC;

	err = FUNC5(codec, &spec->gen.autocfg, NULL, flags);
	if (err < 0)
		return err;

	/* add hooks */
	spec->gen.pcm_playback_hook = stac_playback_pcm_hook;
	spec->gen.pcm_capture_hook = stac_capture_pcm_hook;

	spec->gen.automute_hook = stac_update_outputs;

	err = FUNC3(codec, &spec->gen.autocfg);
	if (err < 0)
		return err;

	if (spec->vref_mute_led_nid) {
		err = FUNC2(codec, spec->vref_mute_led_nid);
		if (err < 0)
			return err;
	}

	/* setup analog beep controls */
	if (spec->anabeep_nid > 0) {
		err = FUNC7(codec,
						 spec->anabeep_nid);
		if (err < 0)
			return err;
	}

	/* setup digital beep controls and input device */
#ifdef CONFIG_SND_HDA_INPUT_BEEP
	if (spec->gen.beep_nid) {
		hda_nid_t nid = spec->gen.beep_nid;
		unsigned int caps;

		err = stac_auto_create_beep_ctls(codec, nid);
		if (err < 0)
			return err;
		if (codec->beep) {
			/* IDT/STAC codecs have linear beep tone parameter */
			codec->beep->linear_tone = spec->linear_tone_beep;
			/* if no beep switch is available, make its own one */
			caps = query_amp_caps(codec, nid, HDA_OUTPUT);
			if (!(caps & AC_AMPCAP_MUTE)) {
				err = stac_beep_switch_ctl(codec);
				if (err < 0)
					return err;
			}
		}
	}
#endif

	if (spec->gpio_led)
		spec->gen.vmaster_mute.hook = stac_vmaster_hook;

	if (spec->aloopback_ctl &&
	    FUNC4(codec, "loopback") == 1) {
		unsigned int wr_verb =
			spec->aloopback_ctl->private_value >> 16;
		if (FUNC6(&codec->core, wr_verb))
			return -ENOMEM;
		if (!FUNC1(&spec->gen, NULL, spec->aloopback_ctl))
			return -ENOMEM;
	}

	if (spec->have_spdif_mux) {
		err = FUNC9(codec);
		if (err < 0)
			return err;
	}

	FUNC10(codec);

	return 0;
}