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
struct hda_codec {struct sigmatel_spec* spec; } ;

/* Variables and functions */
 int AC_AMPCAP_MUTE_SHIFT ; 
 int AC_AMPCAP_NUM_STEPS_SHIFT ; 
 int AC_AMPCAP_OFFSET_SHIFT ; 
 int AC_AMPCAP_STEP_SIZE_SHIFT ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 int FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stac922x_core_init ; 
 int /*<<< orphan*/  stac922x_fixup_tbl ; 
 int /*<<< orphan*/  stac922x_fixups ; 
 int /*<<< orphan*/  stac922x_models ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 
 int FUNC6 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec)
{
	struct sigmatel_spec *spec;
	int err;

	err = FUNC0(codec);
	if (err < 0)
		return err;

	spec = codec->spec;
	spec->linear_tone_beep = 1;
	spec->gen.own_eapd_ctl = 1;

	FUNC1(codec, stac922x_core_init);

	/* Fix Mux capture level; max to 2 */
	FUNC3(codec, 0x12, HDA_OUTPUT,
				  (0 << AC_AMPCAP_OFFSET_SHIFT) |
				  (2 << AC_AMPCAP_NUM_STEPS_SHIFT) |
				  (0x27 << AC_AMPCAP_STEP_SIZE_SHIFT) |
				  (0 << AC_AMPCAP_MUTE_SHIFT));

	FUNC4(codec, stac922x_models, stac922x_fixup_tbl,
			   stac922x_fixups);
	FUNC2(codec, HDA_FIXUP_ACT_PRE_PROBE);

	err = FUNC6(codec);
	if (err < 0) {
		FUNC5(codec);
		return err;
	}

	FUNC2(codec, HDA_FIXUP_ACT_PROBE);

	return 0;
}