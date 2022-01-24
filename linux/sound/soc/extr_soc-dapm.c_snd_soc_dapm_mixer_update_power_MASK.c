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
struct snd_soc_dapm_update {int dummy; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int /*<<< orphan*/  dapm_mutex; struct snd_soc_dapm_update* update; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_DAPM_CLASS_RUNTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_soc_card*,struct snd_kcontrol*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_card*) ; 

int FUNC4(struct snd_soc_dapm_context *dapm,
	struct snd_kcontrol *kcontrol, int connect,
	struct snd_soc_dapm_update *update)
{
	struct snd_soc_card *card = dapm->card;
	int ret;

	FUNC0(&card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);
	card->update = update;
	ret = FUNC2(card, kcontrol, connect, -1);
	card->update = NULL;
	FUNC1(&card->dapm_mutex);
	if (ret > 0)
		FUNC3(card);
	return ret;
}