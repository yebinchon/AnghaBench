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
struct snd_soc_pcm_runtime {struct snd_soc_card* card; int /*<<< orphan*/  codec_dai; } ;
struct snd_soc_jack {int dummy; } ;
struct TYPE_3__ {int idle_bias_off; } ;
struct snd_soc_card {TYPE_2__* dev; TYPE_1__ dapm; } ;
struct byt_max98090_private {struct snd_soc_jack jack; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M98090_REG_SYSTEM_CLOCK ; 
 int SND_JACK_HEADSET ; 
 int SND_JACK_LINEOUT ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  hs_jack_gpios ; 
 int /*<<< orphan*/  hs_jack_pins ; 
 struct byt_max98090_private* FUNC2 (struct snd_soc_card*) ; 
 int FUNC3 (struct snd_soc_card*,char*,int,struct snd_soc_jack*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct snd_soc_jack*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_pcm_runtime *runtime)
{
	int ret;
	struct snd_soc_card *card = runtime->card;
	struct byt_max98090_private *drv = FUNC2(card);
	struct snd_soc_jack *jack = &drv->jack;

	card->dapm.idle_bias_off = true;

	ret = FUNC4(runtime->codec_dai,
				     M98090_REG_SYSTEM_CLOCK,
				     25000000, SND_SOC_CLOCK_IN);
	if (ret < 0) {
		FUNC1(card->dev, "Can't set codec clock %d\n", ret);
		return ret;
	}

	/* Enable jack detection */
	ret = FUNC3(runtime->card, "Headset",
				    SND_JACK_LINEOUT | SND_JACK_HEADSET, jack,
				    hs_jack_pins, FUNC0(hs_jack_pins));
	if (ret)
		return ret;

	return FUNC5(card->dev->parent, jack,
				       FUNC0(hs_jack_gpios),
				       hs_jack_gpios);
}