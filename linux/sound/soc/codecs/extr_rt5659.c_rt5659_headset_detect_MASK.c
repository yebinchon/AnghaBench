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
struct rt5659_priv {scalar_t__ jack_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5659_EJD_CTRL_1 ; 
 int /*<<< orphan*/  RT5659_EJD_CTRL_2 ; 
 int /*<<< orphan*/  RT5659_PWR_ANLG_1 ; 
 int RT5659_PWR_FV2 ; 
 int RT5659_PWR_MB ; 
 int RT5659_PWR_VREF2 ; 
 scalar_t__ SND_JACK_HEADPHONE ; 
 scalar_t__ SND_JACK_HEADSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int) ; 
 struct snd_soc_dapm_context* FUNC3 (struct snd_soc_component*) ; 
 struct rt5659_priv* FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_component *component, int jack_insert)
{
	struct snd_soc_dapm_context *dapm = FUNC3(component);
	int val, i = 0, sleep_time[5] = {300, 150, 100, 50, 30};
	int reg_63;

	struct rt5659_priv *rt5659 = FUNC4(component);

	if (jack_insert) {
		FUNC9(dapm,
			"Mic Det Power");
		FUNC10(dapm);
		reg_63 = FUNC5(component, RT5659_PWR_ANLG_1);

		FUNC6(component, RT5659_PWR_ANLG_1,
			RT5659_PWR_VREF2 | RT5659_PWR_MB,
			RT5659_PWR_VREF2 | RT5659_PWR_MB);
		FUNC1(20);
		FUNC6(component, RT5659_PWR_ANLG_1,
			RT5659_PWR_FV2, RT5659_PWR_FV2);

		FUNC7(component, RT5659_EJD_CTRL_2, 0x4160);
		FUNC6(component, RT5659_EJD_CTRL_1,
			0x20, 0x0);
		FUNC1(20);
		FUNC6(component, RT5659_EJD_CTRL_1,
			0x20, 0x20);

		while (i < 5) {
			FUNC1(sleep_time[i]);
			val = FUNC5(component, RT5659_EJD_CTRL_2) & 0x0003;
			i++;
			if (val == 0x1 || val == 0x2 || val == 0x3)
				break;
		}

		switch (val) {
		case 1:
			rt5659->jack_type = SND_JACK_HEADSET;
			FUNC2(component, true);
			break;
		default:
			FUNC7(component, RT5659_PWR_ANLG_1, reg_63);
			rt5659->jack_type = SND_JACK_HEADPHONE;
			FUNC8(dapm, "Mic Det Power");
			FUNC10(dapm);
			break;
		}
	} else {
		FUNC8(dapm, "Mic Det Power");
		FUNC10(dapm);
		if (rt5659->jack_type == SND_JACK_HEADSET)
			FUNC2(component, false);
		rt5659->jack_type = 0;
	}

	FUNC0(component->dev, "jack_type = %d\n", rt5659->jack_type);
	return rt5659->jack_type;
}