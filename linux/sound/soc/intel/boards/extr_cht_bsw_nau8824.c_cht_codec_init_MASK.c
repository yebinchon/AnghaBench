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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; int /*<<< orphan*/  card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_jack {int /*<<< orphan*/  jack; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct cht_mc_private {struct snd_soc_jack jack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_MEDIA ; 
 int /*<<< orphan*/  KEY_VOICECOMMAND ; 
 int /*<<< orphan*/  KEY_VOLUMEDOWN ; 
 int /*<<< orphan*/  KEY_VOLUMEUP ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_BTN_3 ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  cht_bsw_jack_pins ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,struct snd_soc_jack*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct cht_mc_private* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,struct snd_soc_jack*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_dai*,int,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_pcm_runtime *runtime)
{
	struct cht_mc_private *ctx = FUNC4(runtime->card);
	struct snd_soc_jack *jack = &ctx->jack;
	struct snd_soc_dai *codec_dai = runtime->codec_dai;
	struct snd_soc_component *component = codec_dai->component;
	int ret, jack_type;

	/* TDM 4 slots 24 bit, set Rx & Tx bitmask to 4 active slots */
	ret = FUNC6(codec_dai, 0xf, 0x1, 4, 24);
	if (ret < 0) {
		FUNC1(runtime->dev, "can't set codec TDM slot %d\n", ret);
		return ret;
	}

	/* NAU88L24 supports 4 butons headset detection
	 * KEY_MEDIA
	 * KEY_VOICECOMMAND
	 * KEY_VOLUMEUP
	 * KEY_VOLUMEDOWN
	 */
	jack_type = SND_JACK_HEADSET | SND_JACK_BTN_0 | SND_JACK_BTN_1 |
		SND_JACK_BTN_2 | SND_JACK_BTN_3;
	ret = FUNC5(runtime->card, "Headset", jack_type, jack,
		cht_bsw_jack_pins, FUNC0(cht_bsw_jack_pins));
	if (ret) {
		FUNC1(runtime->dev,
			"Headset Jack creation failed %d\n", ret);
		return ret;
	}
	FUNC3(jack->jack, SND_JACK_BTN_0, KEY_MEDIA);
	FUNC3(jack->jack, SND_JACK_BTN_1, KEY_VOICECOMMAND);
	FUNC3(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEUP);
	FUNC3(jack->jack, SND_JACK_BTN_3, KEY_VOLUMEDOWN);

	FUNC2(component, jack);

	return ret;
}