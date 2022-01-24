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
struct snd_soc_pcm_runtime {struct snd_soc_card* card; } ;
struct snd_soc_card {int /*<<< orphan*/  dapm_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_DAPM_CLASS_RUNTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_pcm_runtime*,int,int) ; 

void FUNC3(struct snd_soc_pcm_runtime *rtd, int stream,
			      int event)
{
	struct snd_soc_card *card = rtd->card;

	FUNC0(&card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);
	FUNC2(rtd, stream, event);
	FUNC1(&card->dapm_mutex);
}