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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct rt5668_priv {int jack_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5668_CBJ_CTRL_1 ; 
 int /*<<< orphan*/  RT5668_CBJ_CTRL_2 ; 
 unsigned int RT5668_JACK_TYPE_MASK ; 
 int /*<<< orphan*/  RT5668_TRIG_JD_HIGH ; 
 int /*<<< orphan*/  RT5668_TRIG_JD_LOW ; 
 int /*<<< orphan*/  RT5668_TRIG_JD_MASK ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int) ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_soc_component*) ; 
 struct rt5668_priv* FUNC3 (struct snd_soc_component*) ; 
 unsigned int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *component,
		int jack_insert)
{
	struct rt5668_priv *rt5668 = FUNC3(component);
	struct snd_soc_dapm_context *dapm =
		FUNC2(component);
	unsigned int val, count;

	if (jack_insert) {
		FUNC7(dapm, "CBJ Power");
		FUNC8(dapm);
		FUNC5(component, RT5668_CBJ_CTRL_1,
			RT5668_TRIG_JD_MASK, RT5668_TRIG_JD_HIGH);

		count = 0;
		val = FUNC4(component, RT5668_CBJ_CTRL_2)
			& RT5668_JACK_TYPE_MASK;
		while (val == 0 && count < 50) {
			FUNC9(10000, 15000);
			val = FUNC4(component,
				RT5668_CBJ_CTRL_2) & RT5668_JACK_TYPE_MASK;
			count++;
		}

		switch (val) {
		case 0x1:
		case 0x2:
			rt5668->jack_type = SND_JACK_HEADSET;
			FUNC1(component, true);
			break;
		default:
			rt5668->jack_type = SND_JACK_HEADPHONE;
		}

	} else {
		FUNC1(component, false);
		FUNC5(component, RT5668_CBJ_CTRL_1,
			RT5668_TRIG_JD_MASK, RT5668_TRIG_JD_LOW);
		FUNC6(dapm, "CBJ Power");
		FUNC8(dapm);

		rt5668->jack_type = 0;
	}

	FUNC0(component->dev, "jack_type = %d\n", rt5668->jack_type);
	return rt5668->jack_type;
}