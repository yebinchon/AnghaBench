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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct rt5682_priv {int jack_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5682_CBJ_CTRL_1 ; 
 int /*<<< orphan*/  RT5682_CBJ_CTRL_2 ; 
 unsigned int RT5682_JACK_TYPE_MASK ; 
 int /*<<< orphan*/  RT5682_PWR_ANLG_1 ; 
 int /*<<< orphan*/  RT5682_PWR_ANLG_3 ; 
 int RT5682_PWR_CBJ ; 
 int RT5682_PWR_FV2 ; 
 int RT5682_PWR_MB ; 
 int RT5682_PWR_VREF2 ; 
 int RT5682_TRIG_JD_HIGH ; 
 int RT5682_TRIG_JD_LOW ; 
 int RT5682_TRIG_JD_MASK ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int) ; 
 struct rt5682_priv* FUNC2 (struct snd_soc_component*) ; 
 unsigned int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component,
		int jack_insert)
{
	struct rt5682_priv *rt5682 = FUNC2(component);
	unsigned int val, count;

	if (jack_insert) {

		FUNC4(component, RT5682_PWR_ANLG_1,
			RT5682_PWR_VREF2 | RT5682_PWR_MB,
			RT5682_PWR_VREF2 | RT5682_PWR_MB);
		FUNC4(component,
				RT5682_PWR_ANLG_1, RT5682_PWR_FV2, 0);
		FUNC5(15000, 20000);
		FUNC4(component,
				RT5682_PWR_ANLG_1, RT5682_PWR_FV2, RT5682_PWR_FV2);
		FUNC4(component, RT5682_PWR_ANLG_3,
			RT5682_PWR_CBJ, RT5682_PWR_CBJ);

		FUNC4(component, RT5682_CBJ_CTRL_1,
			RT5682_TRIG_JD_MASK, RT5682_TRIG_JD_HIGH);

		count = 0;
		val = FUNC3(component, RT5682_CBJ_CTRL_2)
			& RT5682_JACK_TYPE_MASK;
		while (val == 0 && count < 50) {
			FUNC5(10000, 15000);
			val = FUNC3(component,
				RT5682_CBJ_CTRL_2) & RT5682_JACK_TYPE_MASK;
			count++;
		}

		switch (val) {
		case 0x1:
		case 0x2:
			rt5682->jack_type = SND_JACK_HEADSET;
			FUNC1(component, true);
			break;
		default:
			rt5682->jack_type = SND_JACK_HEADPHONE;
		}

	} else {
		FUNC1(component, false);
		FUNC4(component, RT5682_CBJ_CTRL_1,
			RT5682_TRIG_JD_MASK, RT5682_TRIG_JD_LOW);
		FUNC4(component, RT5682_PWR_ANLG_1,
			RT5682_PWR_VREF2 | RT5682_PWR_MB, 0);
		FUNC4(component, RT5682_PWR_ANLG_3,
			RT5682_PWR_CBJ, 0);

		rt5682->jack_type = 0;
	}

	FUNC0(component->dev, "jack_type = %d\n", rt5682->jack_type);
	return rt5682->jack_type;
}