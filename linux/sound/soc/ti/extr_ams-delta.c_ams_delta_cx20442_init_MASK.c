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
struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; struct snd_soc_card* card; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_dai {TYPE_1__* driver; int /*<<< orphan*/  component; } ;
struct snd_soc_card {int /*<<< orphan*/  dev; struct snd_soc_dapm_context dapm; } ;
struct TYPE_4__ {int /*<<< orphan*/  shutdown; int /*<<< orphan*/  startup; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  N_V253 ; 
 int /*<<< orphan*/  SND_JACK_HEADSET ; 
 int /*<<< orphan*/  ams_delta_dai_ops ; 
 int /*<<< orphan*/  ams_delta_hook_switch ; 
 int /*<<< orphan*/  ams_delta_hook_switch_gpios ; 
 TYPE_2__ ams_delta_ops ; 
 int /*<<< orphan*/  ams_delta_shutdown ; 
 int /*<<< orphan*/  ams_delta_startup ; 
 int /*<<< orphan*/  cx20442_codec ; 
 int /*<<< orphan*/  cx81801_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpiod_modem_codec ; 
 int FUNC4 (struct snd_soc_card*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	struct snd_soc_card *card = rtd->card;
	struct snd_soc_dapm_context *dapm = &card->dapm;
	int ret;
	/* Codec is ready, now add/activate board specific controls */

	/* Store a pointer to the codec structure for tty ldisc use */
	cx20442_codec = rtd->codec_dai->component;

	/* Add hook switch - can be used to control the codec from userspace
	 * even if line discipline fails */
	ret = FUNC4(card, "hook_switch", SND_JACK_HEADSET,
				    &ams_delta_hook_switch, NULL, 0);
	if (ret)
		FUNC2(card->dev,
				"Failed to allocate resources for hook switch, "
				"will continue without one.\n");
	else {
		ret = FUNC6(card->dev, &ams_delta_hook_switch,
					FUNC0(ams_delta_hook_switch_gpios),
					ams_delta_hook_switch_gpios);
		if (ret)
			FUNC2(card->dev,
				"Failed to set up hook switch GPIO line, "
				"will continue with hook switch inactive.\n");
	}

	gpiod_modem_codec = FUNC3(card->dev, "modem_codec",
					   GPIOD_OUT_HIGH);
	if (FUNC1(gpiod_modem_codec)) {
		FUNC2(card->dev, "Failed to obtain modem_codec GPIO\n");
		return 0;
	}

	/* Set up digital mute if not provided by the codec */
	if (!codec_dai->driver->ops) {
		codec_dai->driver->ops = &ams_delta_dai_ops;
	} else {
		ams_delta_ops.startup = ams_delta_startup;
		ams_delta_ops.shutdown = ams_delta_shutdown;
	}

	/* Register optional line discipline for over the modem control */
	ret = FUNC7(N_V253, &cx81801_ops);
	if (ret) {
		FUNC2(card->dev,
				"Failed to register line discipline, "
				"will continue without any controls.\n");
		return 0;
	}

	/* Set up initial pin constellation */
	FUNC5(dapm, "Mouthpiece");
	FUNC5(dapm, "Speaker");
	FUNC5(dapm, "AGCIN");
	FUNC5(dapm, "AGCOUT");

	return 0;
}