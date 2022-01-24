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
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct max98090_priv {int /*<<< orphan*/  jack_work; struct snd_soc_jack* jack; } ;

/* Variables and functions */
 int /*<<< orphan*/  M98090_IJDET_MASK ; 
 int M98090_IJDET_SHIFT ; 
 int /*<<< orphan*/  M98090_REG_INTERRUPT_S ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct max98090_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_jack*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

int FUNC6(struct snd_soc_component *component,
	struct snd_soc_jack *jack)
{
	struct max98090_priv *max98090 = FUNC3(component);

	FUNC0(component->dev, "max98090_mic_detect\n");

	max98090->jack = jack;
	if (jack) {
		FUNC4(component, M98090_REG_INTERRUPT_S,
			M98090_IJDET_MASK,
			1 << M98090_IJDET_SHIFT);
	} else {
		FUNC4(component, M98090_REG_INTERRUPT_S,
			M98090_IJDET_MASK,
			0);
	}

	/* Send an initial empty report */
	FUNC5(max98090->jack, 0,
			    SND_JACK_HEADSET | SND_JACK_BTN_0);

	FUNC2(system_power_efficient_wq,
			   &max98090->jack_work,
			   FUNC1(100));

	return 0;
}