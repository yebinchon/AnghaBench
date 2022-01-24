#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {TYPE_3__* codec_dai; } ;
struct snd_soc_dapm_widget {TYPE_1__* dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {TYPE_2__* dai_link; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_6__ {struct snd_soc_component* component; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {struct snd_soc_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct snd_soc_pcm_runtime* FUNC2 (struct snd_soc_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *widget,
			  struct snd_kcontrol *kctl, int event)
{
	struct snd_soc_card *card = widget->dapm->card;
	struct snd_soc_pcm_runtime *rtd;
	struct snd_soc_component *component;

	rtd = FUNC2(card, card->dai_link[0].name);
	component = rtd->codec_dai->component;
	return FUNC1(component, FUNC0(event));
}