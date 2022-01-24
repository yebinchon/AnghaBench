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
struct snd_soc_component {int /*<<< orphan*/  card; } ;
struct mt8183_mt6358_ts3a227_max98357_priv {int /*<<< orphan*/  headset_jack; } ;

/* Variables and functions */
 int SND_JACK_BTN_0 ; 
 int SND_JACK_BTN_1 ; 
 int SND_JACK_BTN_2 ; 
 int SND_JACK_BTN_3 ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  mt8183_mt6358_ts3a227_max98357_card ; 
 struct mt8183_mt6358_ts3a227_max98357_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct snd_soc_component *component)
{
	int ret;
	struct mt8183_mt6358_ts3a227_max98357_priv *priv =
			FUNC0(component->card);

	/* Enable Headset and 4 Buttons Jack detection */
	ret = FUNC1(&mt8183_mt6358_ts3a227_max98357_card,
				    "Headset Jack",
				    SND_JACK_HEADSET |
				    SND_JACK_BTN_0 | SND_JACK_BTN_1 |
				    SND_JACK_BTN_2 | SND_JACK_BTN_3,
				    &priv->headset_jack,
				    NULL, 0);
	if (ret)
		return ret;

	ret = FUNC2(component, &priv->headset_jack);

	return ret;
}