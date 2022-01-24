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
struct snd_soc_pcm_runtime {struct snd_soc_card* card; } ;
struct snd_soc_card {int /*<<< orphan*/  dapm; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aic3x_dapm_widgets ; 
 int /*<<< orphan*/  audio_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_card*,char*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_card *card = rtd->card;
	struct device_node *np = card->dev->of_node;
	int ret;

	/* Add davinci-evm specific widgets */
	FUNC3(&card->dapm, aic3x_dapm_widgets,
				  FUNC0(aic3x_dapm_widgets));

	if (np) {
		ret = FUNC4(card, "ti,audio-routing");
		if (ret)
			return ret;
	} else {
		/* Set up davinci-evm specific audio path audio_map */
		FUNC1(&card->dapm, audio_map,
					FUNC0(audio_map));
	}

	/* not connected */
	FUNC2(&card->dapm, "MONO_LOUT");
	FUNC2(&card->dapm, "HPLCOM");
	FUNC2(&card->dapm, "HPRCOM");

	return 0;
}