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
struct hda_codec {int inv_eapd; struct ad198x_spec* spec; } ;
struct TYPE_3__ {int no_share_stream; } ;
struct TYPE_4__ {int mixer_nid; int beep_nid; int* preferred_dacs; int auto_mute_via_amp; TYPE_1__ multiout; } ;
struct ad198x_spec {TYPE_2__ gen; } ;
typedef  int hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 int /*<<< orphan*/  ad1986a_fixup_models ; 
 int /*<<< orphan*/  ad1986a_fixup_tbl ; 
 int /*<<< orphan*/  ad1986a_fixups ; 
 int FUNC0 (struct hda_codec*,int) ; 
 int FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct ad198x_spec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hda_codec *codec)
{
	int err;
	struct ad198x_spec *spec;
	static hda_nid_t preferred_pairs[] = {
		0x1a, 0x03,
		0x1b, 0x03,
		0x1c, 0x04,
		0x1d, 0x05,
		0x1e, 0x03,
		0
	};

	err = FUNC1(codec);
	if (err < 0)
		return err;
	spec = codec->spec;

	/* AD1986A has the inverted EAPD implementation */
	codec->inv_eapd = 1;

	spec->gen.mixer_nid = 0x07;
	spec->gen.beep_nid = 0x19;
	FUNC2(spec, 0x18, 0, HDA_OUTPUT);

	/* AD1986A has a hardware problem that it can't share a stream
	 * with multiple output pins.  The copy of front to surrounds
	 * causes noisy or silent outputs at a certain timing, e.g.
	 * changing the volume.
	 * So, let's disable the shared stream.
	 */
	spec->gen.multiout.no_share_stream = 1;
	/* give fixed DAC/pin pairs */
	spec->gen.preferred_dacs = preferred_pairs;

	/* AD1986A can't manage the dynamic pin on/off smoothly */
	spec->gen.auto_mute_via_amp = 1;

	FUNC5(codec, ad1986a_fixup_models, ad1986a_fixup_tbl,
			   ad1986a_fixups);
	FUNC3(codec, HDA_FIXUP_ACT_PRE_PROBE);

	err = FUNC0(codec, false);
	if (err < 0) {
		FUNC4(codec);
		return err;
	}

	FUNC3(codec, HDA_FIXUP_ACT_PROBE);

	return 0;
}