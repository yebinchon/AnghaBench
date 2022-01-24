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
struct bdw_rt5677_priv {int /*<<< orphan*/  gpio_hp_en; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct bdw_rt5677_priv* FUNC3 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
			struct snd_kcontrol *k, int event)
{
	struct snd_soc_dapm_context *dapm = w->dapm;
	struct snd_soc_card *card = dapm->card;
	struct bdw_rt5677_priv *bdw_rt5677 = FUNC3(card);

	if (FUNC0(event))
		FUNC2(70);

	FUNC1(bdw_rt5677->gpio_hp_en,
		FUNC0(event));

	return 0;
}