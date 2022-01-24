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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct rt298_priv {struct snd_soc_jack* jack; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT298_IRQ_CTRL ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt298_priv*,int*,int*) ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_soc_component*) ; 
 struct rt298_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_jack*,int,int) ; 

int FUNC7(struct snd_soc_component *component, struct snd_soc_jack *jack)
{
	struct rt298_priv *rt298 = FUNC3(component);
	struct snd_soc_dapm_context *dapm;
	bool hp = false;
	bool mic = false;
	int status = 0;

	/* If jack in NULL, disable HS jack */
	if (!jack) {
		FUNC0(rt298->regmap, RT298_IRQ_CTRL, 0x2, 0x0);
		dapm = FUNC2(component);
		FUNC4(dapm, "LDO1");
		FUNC5(dapm);
		return 0;
	}

	rt298->jack = jack;
	FUNC0(rt298->regmap, RT298_IRQ_CTRL, 0x2, 0x2);

	FUNC1(rt298, &hp, &mic);
	if (hp)
		status |= SND_JACK_HEADPHONE;

	if (mic)
		status |= SND_JACK_MICROPHONE;

	FUNC6(rt298->jack, status,
		SND_JACK_MICROPHONE | SND_JACK_HEADPHONE);

	return 0;
}