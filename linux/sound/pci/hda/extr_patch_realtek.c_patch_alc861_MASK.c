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
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int beep_nid; int /*<<< orphan*/  no_analog; } ;
struct alc_spec {TYPE_1__ gen; int /*<<< orphan*/  power_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 int /*<<< orphan*/  alc861_fixup_tbl ; 
 int /*<<< orphan*/  alc861_fixups ; 
 int FUNC0 (struct hda_codec*) ; 
 int FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  alc_power_eapd ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 scalar_t__ FUNC4 (struct hda_codec*) ; 
 int FUNC5 (struct alc_spec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hda_codec *codec)
{
	struct alc_spec *spec;
	int err;

	err = FUNC1(codec, 0x15);
	if (err < 0)
		return err;

	spec = codec->spec;
	if (FUNC4(codec))
		spec->gen.beep_nid = 0x23;

#ifdef CONFIG_PM
	spec->power_hook = alc_power_eapd;
#endif

	FUNC3(codec);

	FUNC7(codec, NULL, alc861_fixup_tbl, alc861_fixups);
	FUNC6(codec, HDA_FIXUP_ACT_PRE_PROBE);

	/* automatic parse from the BIOS config */
	err = FUNC0(codec);
	if (err < 0)
		goto error;

	if (!spec->gen.no_analog) {
		err = FUNC5(spec, 0x23, 0, HDA_OUTPUT);
		if (err < 0)
			goto error;
	}

	FUNC6(codec, HDA_FIXUP_ACT_PROBE);

	return 0;

 error:
	FUNC2(codec);
	return err;
}