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
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {char* name; int report; int debounce_time; int wake; int /*<<< orphan*/  jack_status_check; struct rt5670_priv* data; int /*<<< orphan*/  gpiod_dev; } ;
struct rt5670_priv {TYPE_1__ hp_gpio; struct snd_soc_jack* jack; } ;

/* Variables and functions */
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rt5670_irq_detection ; 
 struct rt5670_priv* FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_jack*,int,TYPE_1__*) ; 

int FUNC3(struct snd_soc_component *component,
	struct snd_soc_jack *jack)
{
	struct rt5670_priv *rt5670 = FUNC1(component);
	int ret;

	rt5670->jack = jack;
	rt5670->hp_gpio.gpiod_dev = component->dev;
	rt5670->hp_gpio.name = "headset";
	rt5670->hp_gpio.report = SND_JACK_HEADSET |
		SND_JACK_BTN_0 | SND_JACK_BTN_1 | SND_JACK_BTN_2;
	rt5670->hp_gpio.debounce_time = 150;
	rt5670->hp_gpio.wake = true;
	rt5670->hp_gpio.data = (struct rt5670_priv *)rt5670;
	rt5670->hp_gpio.jack_status_check = rt5670_irq_detection;

	ret = FUNC2(rt5670->jack, 1,
			&rt5670->hp_gpio);
	if (ret) {
		FUNC0(component->dev, "Adding jack GPIO failed\n");
		return ret;
	}

	return 0;
}