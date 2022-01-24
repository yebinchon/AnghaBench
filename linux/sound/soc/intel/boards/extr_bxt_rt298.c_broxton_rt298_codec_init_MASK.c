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
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  broxton_headset ; 
 int /*<<< orphan*/  broxton_headset_pins ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_component *component = rtd->codec_dai->component;
	int ret = 0;

	ret = FUNC2(rtd->card, "Headset",
		SND_JACK_HEADSET | SND_JACK_BTN_0,
		&broxton_headset,
		broxton_headset_pins, FUNC0(broxton_headset_pins));

	if (ret)
		return ret;

	FUNC1(component, &broxton_headset);

	FUNC3(&rtd->card->dapm, "SoC DMIC");

	return 0;
}