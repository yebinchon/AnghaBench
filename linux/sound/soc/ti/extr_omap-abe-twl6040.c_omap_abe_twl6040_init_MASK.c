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
struct snd_soc_pcm_runtime {struct snd_soc_card* card; TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int dummy; } ;
struct abe_twl6040 {scalar_t__ jack_detection; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_JACK_HEADSET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  TWL6040_TRIM_HSOTRIM ; 
 int /*<<< orphan*/  hs_jack ; 
 int /*<<< orphan*/  hs_jack_pins ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct abe_twl6040* FUNC4 (struct snd_soc_card*) ; 
 int FUNC5 (struct snd_soc_card*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_component *component = rtd->codec_dai->component;
	struct snd_soc_card *card = rtd->card;
	struct abe_twl6040 *priv = FUNC4(card);
	int hs_trim;
	int ret = 0;

	/*
	 * Configure McPDM offset cancellation based on the HSOTRIM value from
	 * twl6040.
	 */
	hs_trim = FUNC6(component, TWL6040_TRIM_HSOTRIM);
	FUNC3(rtd, FUNC1(hs_trim),
					FUNC2(hs_trim));

	/* Headset jack detection only if it is supported */
	if (priv->jack_detection) {
		ret = FUNC5(rtd->card, "Headset Jack",
					    SND_JACK_HEADSET, &hs_jack,
					    hs_jack_pins,
					    FUNC0(hs_jack_pins));
		if (ret)
			return ret;

		FUNC7(component, &hs_jack, SND_JACK_HEADSET);
	}

	return 0;
}