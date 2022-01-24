#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {struct snd_soc_card* card; } ;
struct snd_soc_card {int /*<<< orphan*/  dev; } ;
struct rx51_audio_pdata {int /*<<< orphan*/  jack_detection_gpio; } ;
struct TYPE_4__ {int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int SND_JACK_HEADSET ; 
 int SND_JACK_VIDEOOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_pcm_runtime*,int) ; 
 int /*<<< orphan*/  rx51_av_jack ; 
 TYPE_1__* rx51_av_jack_gpios ; 
 struct rx51_audio_pdata* FUNC5 (struct snd_soc_card*) ; 
 int FUNC6 (struct snd_soc_card*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_card*,char*,int) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_card *card = rtd->card;
	struct rx51_audio_pdata *pdata = FUNC5(card);
	int err;

	FUNC8(card, "TPA6130A2 Headphone Playback Volume", 42);

	err = FUNC4(rtd, 2);
	if (err < 0) {
		FUNC2(card->dev, "Failed to add MCBSP controls\n");
		return err;
	}

	/* AV jack detection */
	err = FUNC6(rtd->card, "AV Jack",
				    SND_JACK_HEADSET | SND_JACK_VIDEOOUT,
				    &rx51_av_jack, NULL, 0);
	if (err) {
		FUNC2(card->dev, "Failed to add AV Jack\n");
		return err;
	}

	/* prepare gpio for snd_soc_jack_add_gpios */
	rx51_av_jack_gpios[0].gpio = FUNC1(pdata->jack_detection_gpio);
	FUNC3(card->dev, pdata->jack_detection_gpio);

	err = FUNC7(&rx51_av_jack,
				     FUNC0(rx51_av_jack_gpios),
				     rx51_av_jack_gpios);
	if (err) {
		FUNC2(card->dev, "Failed to add GPIOs\n");
		return err;
	}

	return err;
}