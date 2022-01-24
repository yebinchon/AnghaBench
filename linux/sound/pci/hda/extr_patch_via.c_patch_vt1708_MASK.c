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
struct TYPE_4__ {int mixer_nid; int suppress_auto_mic; int auto_mute_via_amp; } ;
struct via_spec {int vt1708_jack_detect; TYPE_2__ gen; } ;
struct TYPE_3__ {int /*<<< orphan*/  build_pcms; int /*<<< orphan*/  build_controls; } ;
struct hda_codec {scalar_t__ jackpoll_interval; TYPE_1__ patch_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  VT1708_CD_PIN_NID ; 
 int /*<<< orphan*/  VT1708_HP_PIN_NID ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 struct via_spec* FUNC4 (struct hda_codec*) ; 
 int FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  vt1708_build_controls ; 
 int /*<<< orphan*/  vt1708_build_pcms ; 
 int /*<<< orphan*/  vt1708_init_verbs ; 
 int /*<<< orphan*/  vt1708_jack_detect_ctl ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec)
{
	struct via_spec *spec;
	int err;

	/* create a codec specific record */
	spec = FUNC4(codec);
	if (spec == NULL)
		return -ENOMEM;

	/* override some patch_ops */
	codec->patch_ops.build_controls = vt1708_build_controls;
	codec->patch_ops.build_pcms = vt1708_build_pcms;
	spec->gen.mixer_nid = 0x17;

	/* set jackpoll_interval while parsing the codec */
	codec->jackpoll_interval = FUNC0(100);
	spec->vt1708_jack_detect = 1;

	/* don't support the input jack switching due to lack of unsol event */
	/* (it may work with polling, though, but it needs testing) */
	spec->gen.suppress_auto_mic = 1;
	/* Some machines show the broken speaker mute */
	spec->gen.auto_mute_via_amp = 1;

	/* Add HP and CD pin config connect bit re-config action */
	FUNC6(codec, VT1708_HP_PIN_NID);
	FUNC6(codec, VT1708_CD_PIN_NID);

	err = FUNC1(codec, vt1708_init_verbs);
	if (err < 0)
		goto error;

	/* automatic parse from the BIOS config */
	err = FUNC5(codec);
	if (err < 0)
		goto error;

	/* add jack detect on/off control */
	if (!FUNC2(&spec->gen, NULL, &vt1708_jack_detect_ctl)) {
		err = -ENOMEM;
		goto error;
	}

	/* clear jackpoll_interval again; it's set dynamically */
	codec->jackpoll_interval = 0;

	return 0;

 error:
	FUNC3(codec);
	return err;
}