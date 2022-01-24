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
struct TYPE_4__ {int own_eapd_ctl; int power_down_unused; int mixer_nid; int beep_nid; } ;
struct sigmatel_spec {int have_spdif_mux; int gpio_mask; int gpio_dir; int gpio_data; int stream_delay; int aloopback_mask; int powerdown_adcs; int /*<<< orphan*/  pwr_nids; int /*<<< orphan*/  num_pwrs; TYPE_2__ gen; scalar_t__ aloopback_shift; int /*<<< orphan*/ * aloopback_ctl; scalar_t__ linear_tone_beep; } ;
struct TYPE_3__ {int vendor_id; int revision_id; } ;
struct hda_codec {int /*<<< orphan*/  proc_widget_hook; TYPE_1__ core; struct sigmatel_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int AC_WCAP_IN_AMP ; 
 scalar_t__ AC_WID_VOL_KNB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stac92hd71bxx_core_init ; 
 int /*<<< orphan*/  stac92hd71bxx_fixup_tbl ; 
 int /*<<< orphan*/  stac92hd71bxx_fixups ; 
 int /*<<< orphan*/  stac92hd71bxx_loopback ; 
 int /*<<< orphan*/  stac92hd71bxx_models ; 
 int /*<<< orphan*/  stac92hd71bxx_pwr_nids ; 
 scalar_t__* stac92hd71bxx_unmute_nids ; 
 int /*<<< orphan*/  stac92hd7x_proc_hook ; 
 int /*<<< orphan*/  FUNC9 (struct hda_codec*) ; 
 int FUNC10 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC11 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC12(struct hda_codec *codec)
{
	struct sigmatel_spec *spec;
	const hda_nid_t *unmute_nids = stac92hd71bxx_unmute_nids;
	int err;

	err = FUNC1(codec);
	if (err < 0)
		return err;

	spec = codec->spec;
	/* disabled power_save_node since it causes noises on a Dell machine */
	/* codec->power_save_node = 1; */
	spec->linear_tone_beep = 0;
	spec->gen.own_eapd_ctl = 1;
	spec->gen.power_down_unused = 1;
	spec->gen.mixer_nid = 0x17;
	spec->have_spdif_mux = 1;

	/* GPIO0 = EAPD */
	spec->gpio_mask = 0x01;
	spec->gpio_dir = 0x01;
	spec->gpio_data = 0x01;

	switch (codec->core.vendor_id) {
	case 0x111d76b6: /* 4 Port without Analog Mixer */
	case 0x111d76b7:
		unmute_nids++;
		break;
	case 0x111d7608: /* 5 Port with Analog Mixer */
		if ((codec->core.revision_id & 0xf) == 0 ||
		    (codec->core.revision_id & 0xf) == 1)
			spec->stream_delay = 40; /* 40 milliseconds */

		/* disable VSW */
		unmute_nids++;
		FUNC7(codec, 0x0f, 0x40f000f0);
		FUNC7(codec, 0x19, 0x40f000f3);
		break;
	case 0x111d7603: /* 6 Port with Analog Mixer */
		if ((codec->core.revision_id & 0xf) == 1)
			spec->stream_delay = 40; /* 40 milliseconds */

		break;
	}

	if (FUNC3(FUNC2(codec, 0x28)) == AC_WID_VOL_KNB)
		FUNC4(codec, stac92hd71bxx_core_init);

	if (FUNC2(codec, 0xa) & AC_WCAP_IN_AMP) {
		const hda_nid_t *p;
		for (p = unmute_nids; *p; p++)
			FUNC6(codec, *p, HDA_INPUT, 0,
						      0xff, 0x00);
	}

	spec->aloopback_ctl = &stac92hd71bxx_loopback;
	spec->aloopback_mask = 0x50;
	spec->aloopback_shift = 0;

	spec->powerdown_adcs = 1;
	spec->gen.beep_nid = 0x26; /* digital beep */
	spec->num_pwrs = FUNC0(stac92hd71bxx_pwr_nids);
	spec->pwr_nids = stac92hd71bxx_pwr_nids;

	FUNC8(codec, stac92hd71bxx_models, stac92hd71bxx_fixup_tbl,
			   stac92hd71bxx_fixups);
	FUNC5(codec, HDA_FIXUP_ACT_PRE_PROBE);

	FUNC11(codec);

	err = FUNC10(codec);
	if (err < 0) {
		FUNC9(codec);
		return err;
	}

	codec->proc_widget_hook = stac92hd7x_proc_hook;

	FUNC5(codec, HDA_FIXUP_ACT_PROBE);

	return 0;
}