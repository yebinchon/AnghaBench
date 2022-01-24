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
struct via_spec {TYPE_1__ gen; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 struct via_spec* FUNC4 (struct hda_codec*) ; 
 int FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  vt1716S_init_verbs ; 
 int /*<<< orphan*/  vt1716S_mono_out_mixer ; 
 int /*<<< orphan*/  vt1716s_dmic_mixer_sw ; 
 int /*<<< orphan*/  vt1716s_dmic_mixer_vol ; 

__attribute__((used)) static int FUNC6(struct hda_codec *codec)
{
	struct via_spec *spec;
	int err;

	/* create a codec specific record */
	spec = FUNC4(codec);
	if (spec == NULL)
		return -ENOMEM;

	spec->gen.mixer_nid = 0x16;
	FUNC0(codec, 0x1a, 0, 3, 40);
	FUNC0(codec, 0x1e, 0, 3, 40);

	err = FUNC1(codec, vt1716S_init_verbs);
	if (err < 0)
		goto error;

	/* automatic parse from the BIOS config */
	err = FUNC5(codec);
	if (err < 0)
		goto error;

	if (!FUNC2(&spec->gen, NULL, &vt1716s_dmic_mixer_vol) ||
	    !FUNC2(&spec->gen, NULL, &vt1716s_dmic_mixer_sw) ||
	    !FUNC2(&spec->gen, NULL, &vt1716S_mono_out_mixer)) {
		err = -ENOMEM;
		goto error;
	}

	return 0;

 error:
	FUNC3(codec);
	return err;
}