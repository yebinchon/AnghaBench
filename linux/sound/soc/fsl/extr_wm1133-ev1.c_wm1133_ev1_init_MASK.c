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
struct snd_soc_pcm_runtime {TYPE_2__* card; TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dapm; } ;
struct TYPE_3__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  WM8350_JDR ; 
 int /*<<< orphan*/  hp_jack ; 
 int /*<<< orphan*/  hp_jack_pins ; 
 int /*<<< orphan*/  mic_jack ; 
 int /*<<< orphan*/  mic_jack_pins ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_component *component = rtd->codec_dai->component;

	/* Headphone jack detection */
	FUNC1(rtd->card, "Headphone", SND_JACK_HEADPHONE,
			      &hp_jack, hp_jack_pins, FUNC0(hp_jack_pins));
	FUNC3(component, WM8350_JDR, &hp_jack, SND_JACK_HEADPHONE);

	/* Microphone jack detection */
	FUNC1(rtd->card, "Microphone",
			      SND_JACK_MICROPHONE | SND_JACK_BTN_0, &mic_jack,
			      mic_jack_pins, FUNC0(mic_jack_pins));
	FUNC4(component, &mic_jack, SND_JACK_MICROPHONE,
			       SND_JACK_BTN_0);

	FUNC2(&rtd->card->dapm, "Mic Bias");

	return 0;
}