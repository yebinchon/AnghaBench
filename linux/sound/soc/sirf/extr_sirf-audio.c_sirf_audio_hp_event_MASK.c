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
struct sirf_audio_card {int /*<<< orphan*/  gpio_hp_pa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct sirf_audio_card* FUNC3 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
				struct snd_kcontrol *ctrl, int event)
{
	struct snd_soc_dapm_context *dapm = w->dapm;
	struct snd_soc_card *card = dapm->card;
	struct sirf_audio_card *sirf_audio_card = FUNC3(card);
	int on = !FUNC0(event);

	if (FUNC1(sirf_audio_card->gpio_hp_pa))
		FUNC2(sirf_audio_card->gpio_hp_pa, on);
	return 0;
}