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
struct snd_soc_jack {int status; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct rt286_priv {int /*<<< orphan*/  regmap; struct snd_soc_jack* jack; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT286_IRQ_CTRL ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_soc_component*) ; 
 struct rt286_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_jack*,int,int) ; 

int FUNC7(struct snd_soc_component *component, struct snd_soc_jack *jack)
{
	struct snd_soc_dapm_context *dapm = FUNC1(component);
	struct rt286_priv *rt286 = FUNC2(component);

	rt286->jack = jack;

	if (jack) {
		/* enable IRQ */
		if (rt286->jack->status & SND_JACK_HEADPHONE)
			FUNC4(dapm, "LDO1");
		FUNC0(rt286->regmap, RT286_IRQ_CTRL, 0x2, 0x2);
		/* Send an initial empty report */
		FUNC6(rt286->jack, rt286->jack->status,
			SND_JACK_MICROPHONE | SND_JACK_HEADPHONE);
	} else {
		/* disable IRQ */
		FUNC0(rt286->regmap, RT286_IRQ_CTRL, 0x2, 0x0);
		FUNC3(dapm, "LDO1");
	}
	FUNC5(dapm);

	return 0;
}