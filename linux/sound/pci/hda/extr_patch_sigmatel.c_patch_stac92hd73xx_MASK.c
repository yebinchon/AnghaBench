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
struct TYPE_4__ {int mixer_nid; int beep_nid; int own_eapd_ctl; int power_down_unused; } ;
struct sigmatel_spec {int have_spdif_mux; int aloopback_mask; int aloopback_shift; int eapd_mask; int gpio_mask; int gpio_dir; int gpio_data; int eapd_switch; int /*<<< orphan*/  volknob_init; TYPE_2__ gen; int /*<<< orphan*/  pwr_nids; int /*<<< orphan*/  num_pwrs; int /*<<< orphan*/ * aloopback_ctl; scalar_t__ linear_tone_beep; } ;
struct TYPE_3__ {int vendor_id; } ;
struct hda_codec {int power_save_node; int /*<<< orphan*/  proc_widget_hook; TYPE_1__ core; struct sigmatel_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stac92hd73xx_10ch_loopback ; 
 int /*<<< orphan*/  stac92hd73xx_6ch_loopback ; 
 int /*<<< orphan*/  stac92hd73xx_8ch_loopback ; 
 int /*<<< orphan*/  stac92hd73xx_core_init ; 
 int /*<<< orphan*/  stac92hd73xx_fixup_tbl ; 
 int /*<<< orphan*/  stac92hd73xx_fixups ; 
 int /*<<< orphan*/  stac92hd73xx_models ; 
 int /*<<< orphan*/  stac92hd73xx_pwr_nids ; 
 int /*<<< orphan*/  stac92hd7x_proc_hook ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*) ; 
 int FUNC9 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC10(struct hda_codec *codec)
{
	struct sigmatel_spec *spec;
	int err;
	int num_dacs;

	err = FUNC1(codec);
	if (err < 0)
		return err;

	spec = codec->spec;
	/* enable power_save_node only for new 92HD89xx chips, as it causes
	 * click noises on old 92HD73xx chips.
	 */
	if ((codec->core.vendor_id & 0xfffffff0) != 0x111d7670)
		codec->power_save_node = 1;
	spec->linear_tone_beep = 0;
	spec->gen.mixer_nid = 0x1d;
	spec->have_spdif_mux = 1;

	num_dacs = FUNC6(codec, 0x0a) - 1;
	if (num_dacs < 3 || num_dacs > 5) {
		FUNC2(codec,
			   "Could not determine number of channels defaulting to DAC count\n");
		num_dacs = 5;
	}

	switch (num_dacs) {
	case 0x3: /* 6 Channel */
		spec->aloopback_ctl = &stac92hd73xx_6ch_loopback;
		break;
	case 0x4: /* 8 Channel */
		spec->aloopback_ctl = &stac92hd73xx_8ch_loopback;
		break;
	case 0x5: /* 10 Channel */
		spec->aloopback_ctl = &stac92hd73xx_10ch_loopback;
		break;
	}

	spec->aloopback_mask = 0x01;
	spec->aloopback_shift = 8;

	spec->gen.beep_nid = 0x1c; /* digital beep */

	/* GPIO0 High = Enable EAPD */
	spec->eapd_mask = spec->gpio_mask = spec->gpio_dir = 0x1;
	spec->gpio_data = 0x01;

	spec->eapd_switch = 1;

	spec->num_pwrs = FUNC0(stac92hd73xx_pwr_nids);
	spec->pwr_nids = stac92hd73xx_pwr_nids;

	spec->gen.own_eapd_ctl = 1;
	spec->gen.power_down_unused = 1;

	FUNC7(codec, stac92hd73xx_models, stac92hd73xx_fixup_tbl,
			   stac92hd73xx_fixups);
	FUNC5(codec, HDA_FIXUP_ACT_PRE_PROBE);

	if (!spec->volknob_init)
		FUNC4(codec, stac92hd73xx_core_init);

	err = FUNC9(codec);
	if (err < 0) {
		FUNC8(codec);
		return err;
	}

	/* Don't GPIO-mute speakers if there are no internal speakers, because
	 * the GPIO might be necessary for Headphone
	 */
	if (spec->eapd_switch && !FUNC3(codec))
		spec->eapd_switch = 0;

	codec->proc_widget_hook = stac92hd7x_proc_hook;

	FUNC5(codec, HDA_FIXUP_ACT_PROBE);

	return 0;
}