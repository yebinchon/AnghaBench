#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hda_codec {int /*<<< orphan*/  core; int /*<<< orphan*/  nids; int /*<<< orphan*/  mixers; scalar_t__ spdif_status_reset; int /*<<< orphan*/ * slave_dig_outs; int /*<<< orphan*/ * preset; int /*<<< orphan*/  verbs; int /*<<< orphan*/  spdif_out; int /*<<< orphan*/  cvt_setups; int /*<<< orphan*/  driver_pins; int /*<<< orphan*/ * spec; int /*<<< orphan*/ * proc_widget_hook; int /*<<< orphan*/  patch_ops; int /*<<< orphan*/  in_freeing; int /*<<< orphan*/  jackpoll_work; scalar_t__ registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC9 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC10 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct hda_codec *codec)
{
	if (codec->registered) {
		/* pm_runtime_put() is called in snd_hdac_device_exit() */
		FUNC5(FUNC2(codec));
		FUNC4(FUNC2(codec));
		codec->registered = 0;
	}

	FUNC0(&codec->jackpoll_work);
	if (!codec->in_freeing)
		FUNC8(codec);
	FUNC1(codec);
	FUNC9(codec);
	FUNC3(&codec->patch_ops, 0, sizeof(codec->patch_ops));
	FUNC10(codec);
	codec->proc_widget_hook = NULL;
	codec->spec = NULL;

	/* free only driver_pins so that init_pins + user_pins are restored */
	FUNC7(&codec->driver_pins);
	FUNC7(&codec->cvt_setups);
	FUNC7(&codec->spdif_out);
	FUNC7(&codec->verbs);
	codec->preset = NULL;
	codec->slave_dig_outs = NULL;
	codec->spdif_status_reset = 0;
	FUNC7(&codec->mixers);
	FUNC7(&codec->nids);
	FUNC6(codec);
	FUNC11(&codec->core);
}