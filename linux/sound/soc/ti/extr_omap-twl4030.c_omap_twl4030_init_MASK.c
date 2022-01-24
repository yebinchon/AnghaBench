#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {struct snd_soc_card* card; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_card {int /*<<< orphan*/  dev; struct snd_soc_dapm_context dapm; } ;
struct omap_twl4030 {scalar_t__ jack_detect; int /*<<< orphan*/  hs_jack; } ;
struct omap_tw4030_pdata {int /*<<< orphan*/  has_linein; int /*<<< orphan*/  has_digimic1; int /*<<< orphan*/  has_digimic0; int /*<<< orphan*/  has_carkitmic; int /*<<< orphan*/  has_hsmic; int /*<<< orphan*/  has_submic; int /*<<< orphan*/  has_mainmic; int /*<<< orphan*/  has_carkit; int /*<<< orphan*/  has_predriv; int /*<<< orphan*/  has_hs; int /*<<< orphan*/  has_hf; int /*<<< orphan*/  has_ear; int /*<<< orphan*/  custom_routing; } ;
struct TYPE_6__ {scalar_t__ gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SND_JACK_HEADSET ; 
 struct omap_tw4030_pdata* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* hs_jack_gpios ; 
 TYPE_1__* hs_jack_pins ; 
 struct omap_twl4030* FUNC2 (struct snd_soc_card*) ; 
 int FUNC3 (struct snd_soc_card*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_card *card = rtd->card;
	struct snd_soc_dapm_context *dapm = &card->dapm;
	struct omap_tw4030_pdata *pdata = FUNC1(card->dev);
	struct omap_twl4030 *priv = FUNC2(card);
	int ret = 0;

	/* Headset jack detection only if it is supported */
	if (priv->jack_detect > 0) {
		hs_jack_gpios[0].gpio = priv->jack_detect;

		ret = FUNC3(rtd->card, "Headset Jack",
					    SND_JACK_HEADSET, &priv->hs_jack,
					    hs_jack_pins,
					    FUNC0(hs_jack_pins));
		if (ret)
			return ret;

		ret = FUNC4(&priv->hs_jack,
					     FUNC0(hs_jack_gpios),
					     hs_jack_gpios);
		if (ret)
			return ret;
	}

	/*
	 * NULL pdata means we booted with DT. In this case the routing is
	 * provided and the card is fully routed, no need to mark pins.
	 */
	if (!pdata || !pdata->custom_routing)
		return ret;

	/* Disable not connected paths if not used */
	FUNC5(dapm, pdata->has_ear, "Earpiece Spk");
	FUNC5(dapm, pdata->has_hf, "Handsfree Spk");
	FUNC5(dapm, pdata->has_hs, "Headset Stereophone");
	FUNC5(dapm, pdata->has_predriv, "Ext Spk");
	FUNC5(dapm, pdata->has_carkit, "Carkit Spk");

	FUNC5(dapm, pdata->has_mainmic, "Main Mic");
	FUNC5(dapm, pdata->has_submic, "Sub Mic");
	FUNC5(dapm, pdata->has_hsmic, "Headset Mic");
	FUNC5(dapm, pdata->has_carkitmic, "Carkit Mic");
	FUNC5(dapm, pdata->has_digimic0, "Digital0 Mic");
	FUNC5(dapm, pdata->has_digimic1, "Digital1 Mic");
	FUNC5(dapm, pdata->has_linein, "Line In");

	return ret;
}