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
struct snd_ac97_template {int /*<<< orphan*/  scaps; scalar_t__ num; struct aaci* private_data; } ;
struct snd_ac97_bus {int clock; int /*<<< orphan*/ * pcms; } ;
struct snd_ac97 {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pcm; } ;
struct TYPE_3__ {int /*<<< orphan*/ * pcm; } ;
struct aaci {TYPE_2__ capture; TYPE_1__ playback; struct snd_ac97* ac97; struct snd_ac97_bus* ac97_bus; int /*<<< orphan*/  card; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ AACI_RESET ; 
 int /*<<< orphan*/  AC97_PC_BEEP ; 
 int /*<<< orphan*/  AC97_SCAP_SKIP_MODEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FRAME_PERIOD_US ; 
 int /*<<< orphan*/  RESET_NRST ; 
 int /*<<< orphan*/  aaci_bus_ops ; 
 int /*<<< orphan*/  ac97_defs ; 
 scalar_t__ FUNC1 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97_template*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct aaci*,struct snd_ac97_bus**) ; 
 int FUNC4 (struct snd_ac97_bus*,struct snd_ac97_template*,struct snd_ac97**) ; 
 int FUNC5 (struct snd_ac97_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ac97*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct aaci *aaci)
{
	struct snd_ac97_template ac97_template;
	struct snd_ac97_bus *ac97_bus;
	struct snd_ac97 *ac97;
	int ret;

	/*
	 * Assert AACIRESET for 2us
	 */
	FUNC8(0, aaci->base + AACI_RESET);
	FUNC7(2);
	FUNC8(RESET_NRST, aaci->base + AACI_RESET);

	/*
	 * Give the AC'97 codec more than enough time
	 * to wake up. (42us = ~2 frames at 48kHz.)
	 */
	FUNC7(FRAME_PERIOD_US * 2);

	ret = FUNC3(aaci->card, 0, &aaci_bus_ops, aaci, &ac97_bus);
	if (ret)
		goto out;

	ac97_bus->clock = 48000;
	aaci->ac97_bus = ac97_bus;

	FUNC2(&ac97_template, 0, sizeof(struct snd_ac97_template));
	ac97_template.private_data = aaci;
	ac97_template.num = 0;
	ac97_template.scaps = AC97_SCAP_SKIP_MODEM;

	ret = FUNC4(ac97_bus, &ac97_template, &ac97);
	if (ret)
		goto out;
	aaci->ac97 = ac97;

	/*
	 * Disable AC97 PC Beep input on audio codecs.
	 */
	if (FUNC1(ac97))
		FUNC6(ac97, AC97_PC_BEEP, 0x801e);

	ret = FUNC5(ac97_bus, FUNC0(ac97_defs), ac97_defs);
	if (ret)
		goto out;

	aaci->playback.pcm = &ac97_bus->pcms[0];
	aaci->capture.pcm  = &ac97_bus->pcms[1];

 out:
	return ret;
}