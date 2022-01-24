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
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int (* set_bias_level ) (struct snd_soc_card*,struct snd_soc_dapm_context*,int) ;int (* set_bias_level_post ) (struct snd_soc_card*,struct snd_soc_dapm_context*,int) ;struct snd_soc_dapm_context dapm; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_dapm_context*,int) ; 
 int FUNC1 (struct snd_soc_card*,struct snd_soc_dapm_context*,int) ; 
 int FUNC2 (struct snd_soc_card*,struct snd_soc_dapm_context*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_card*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_card*,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_context *dapm,
				       enum snd_soc_bias_level level)
{
	struct snd_soc_card *card = dapm->card;
	int ret = 0;

	FUNC4(card, level);

	if (card && card->set_bias_level)
		ret = card->set_bias_level(card, dapm, level);
	if (ret != 0)
		goto out;

	if (!card || dapm != &card->dapm)
		ret = FUNC0(dapm, level);

	if (ret != 0)
		goto out;

	if (card && card->set_bias_level_post)
		ret = card->set_bias_level_post(card, dapm, level);
out:
	FUNC3(card, level);

	return ret;
}