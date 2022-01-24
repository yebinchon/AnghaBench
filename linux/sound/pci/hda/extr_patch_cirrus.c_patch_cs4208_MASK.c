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
struct hda_codec {int /*<<< orphan*/  patch_ops; } ;
struct TYPE_2__ {unsigned long long out_vol_mask; int /*<<< orphan*/  automute_hook; } ;
struct cs_spec {TYPE_1__ gen; } ;

/* Variables and functions */
 int AC_WCAP_STEREO ; 
 int /*<<< orphan*/  CS4208_VENDOR_NID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  cs4208_fixup_tbl ; 
 int /*<<< orphan*/  cs4208_fixups ; 
 int /*<<< orphan*/  cs4208_models ; 
 struct cs_spec* FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cs_automute ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  cs_patch_ops ; 
 int FUNC4 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hda_codec *codec)
{
	struct cs_spec *spec;
	int err;

	spec = FUNC1(codec, CS4208_VENDOR_NID);
	if (!spec)
		return -ENOMEM;

	codec->patch_ops = cs_patch_ops;
	spec->gen.automute_hook = cs_automute;
	/* exclude NID 0x10 (HP) from output volumes due to different steps */
	spec->gen.out_vol_mask = 1ULL << 0x10;

	FUNC7(codec, cs4208_models, cs4208_fixup_tbl,
			   cs4208_fixups);
	FUNC5(codec, HDA_FIXUP_ACT_PRE_PROBE);

	FUNC6(codec, 0x18,
			       FUNC4(codec, 0x18) | AC_WCAP_STEREO);
	FUNC0(codec, 0x18);
	FUNC0(codec, 0x1b);
	FUNC0(codec, 0x1c);

	err = FUNC3(codec);
	if (err < 0)
		goto error;

	FUNC5(codec, HDA_FIXUP_ACT_PROBE);

	return 0;

 error:
	FUNC2(codec);
	return err;
}