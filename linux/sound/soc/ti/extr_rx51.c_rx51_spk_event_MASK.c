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
struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rx51_audio_pdata {int /*<<< orphan*/  speaker_amp_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct rx51_audio_pdata* FUNC2 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
			  struct snd_kcontrol *k, int event)
{
	struct snd_soc_dapm_context *dapm = w->dapm;
	struct snd_soc_card *card = dapm->card;
	struct rx51_audio_pdata *pdata = FUNC2(card);

	FUNC1(pdata->speaker_amp_gpio,
				     !!FUNC0(event));

	return 0;
}