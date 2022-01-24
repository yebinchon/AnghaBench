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
struct TYPE_2__ {int own_eapd_ctl; } ;
struct sigmatel_spec {int linear_tone_beep; TYPE_1__ gen; } ;
struct hda_codec {int /*<<< orphan*/  power_filter; struct sigmatel_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_hda_codec_eapd_power_filter ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stac9200_eapd_init ; 
 int /*<<< orphan*/  stac9200_fixup_tbl ; 
 int /*<<< orphan*/  stac9200_fixups ; 
 int /*<<< orphan*/  stac9200_models ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 int FUNC5 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC6(struct hda_codec *codec)
{
	struct sigmatel_spec *spec;
	int err;

	err = FUNC0(codec);
	if (err < 0)
		return err;

	spec = codec->spec;
	spec->linear_tone_beep = 1;
	spec->gen.own_eapd_ctl = 1;

	codec->power_filter = snd_hda_codec_eapd_power_filter;

	FUNC1(codec, stac9200_eapd_init);

	FUNC3(codec, stac9200_models, stac9200_fixup_tbl,
			   stac9200_fixups);
	FUNC2(codec, HDA_FIXUP_ACT_PRE_PROBE);

	err = FUNC5(codec);
	if (err < 0) {
		FUNC4(codec);
		return err;
	}

	FUNC2(codec, HDA_FIXUP_ACT_PROBE);

	return 0;
}