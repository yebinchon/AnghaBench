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
struct tm2_machine_priv {int /*<<< orphan*/  gpio_mic_bias; } ;
struct snd_soc_dapm_widget {TYPE_1__* dapm; } ;
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {struct snd_soc_card* card; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct tm2_machine_priv* FUNC1 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dapm_widget *w,
				struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_card *card = w->dapm->card;
	struct tm2_machine_priv *priv = FUNC1(card);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		FUNC0(priv->gpio_mic_bias,  1);
		break;
	case SND_SOC_DAPM_POST_PMD:
		FUNC0(priv->gpio_mic_bias,  0);
		break;
	}

	return 0;
}