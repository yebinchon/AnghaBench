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
struct hda_pintbl {int member_0; int member_1; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int auto_mute_via_amp; int /*<<< orphan*/  automute_hook; } ;
struct alc_spec {void* init_amp; TYPE_1__ gen; } ;

/* Variables and functions */
 void* ALC_INIT_DEFAULT ; 
#define  HDA_FIXUP_ACT_BUILD 130 
#define  HDA_FIXUP_ACT_PRE_PROBE 129 
#define  HDA_FIXUP_ACT_PROBE 128 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  asus_tx300_automute ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,struct hda_pintbl const*) ; 
 int /*<<< orphan*/  snd_hda_gen_hp_automute ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec,
				    const struct hda_fixup *fix, int action)
{
	struct alc_spec *spec = codec->spec;
	static const struct hda_pintbl dock_pins[] = {
		{ 0x1b, 0x21114000 }, /* dock speaker pin */
		{}
	};

	switch (action) {
	case HDA_FIXUP_ACT_PRE_PROBE:
		spec->init_amp = ALC_INIT_DEFAULT;
		/* TX300 needs to set up GPIO2 for the speaker amp */
		FUNC0(codec, 0x04);
		FUNC2(codec, dock_pins);
		spec->gen.auto_mute_via_amp = 1;
		spec->gen.automute_hook = asus_tx300_automute;
		FUNC3(codec, 0x1b,
						    snd_hda_gen_hp_automute);
		break;
	case HDA_FIXUP_ACT_PROBE:
		spec->init_amp = ALC_INIT_DEFAULT;
		break;
	case HDA_FIXUP_ACT_BUILD:
		/* this is a bit tricky; give more sane names for the main
		 * (tablet) speaker and the dock speaker, respectively
		 */
		FUNC1(codec, "Speaker Playback Switch",
			   "Dock Speaker Playback Switch");
		FUNC1(codec, "Bass Speaker Playback Switch",
			   "Speaker Playback Switch");
		break;
	}
}