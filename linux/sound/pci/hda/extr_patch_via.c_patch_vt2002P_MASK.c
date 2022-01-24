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
struct TYPE_2__ {int mixer_nid; } ;
struct via_spec {scalar_t__ codec_type; TYPE_1__ gen; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 scalar_t__ VT1802 ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  via_fixups ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*) ; 
 struct via_spec* FUNC7 (struct hda_codec*) ; 
 int FUNC8 (struct hda_codec*) ; 
 int /*<<< orphan*/  vt1802_init_verbs ; 
 int /*<<< orphan*/  vt2002P_init_verbs ; 
 int /*<<< orphan*/  vt2002p_fixups ; 

__attribute__((used)) static int FUNC9(struct hda_codec *codec)
{
	struct via_spec *spec;
	int err;

	/* create a codec specific record */
	spec = FUNC7(codec);
	if (spec == NULL)
		return -ENOMEM;

	spec->gen.mixer_nid = 0x21;
	FUNC2(codec, 0x2b, 0, 3, 40);
	FUNC2(codec, 0x29, 0, 3, 40);
	if (spec->codec_type == VT1802)
		FUNC1(codec);
	FUNC0(codec);

	FUNC5(codec, NULL, vt2002p_fixups, via_fixups);
	FUNC4(codec, HDA_FIXUP_ACT_PRE_PROBE);

	if (spec->codec_type == VT1802)
		err = FUNC3(codec, vt1802_init_verbs);
	else
		err = FUNC3(codec, vt2002P_init_verbs);
	if (err < 0)
		goto error;

	/* automatic parse from the BIOS config */
	err = FUNC8(codec);
	if (err < 0)
		goto error;

	return 0;

 error:
	FUNC6(codec);
	return err;
}