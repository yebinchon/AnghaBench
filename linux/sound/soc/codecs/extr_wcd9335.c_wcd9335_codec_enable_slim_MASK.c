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
struct TYPE_2__ {int /*<<< orphan*/  chs; } ;
struct wcd_slim_codec_dai_data {TYPE_1__ sconfig; } ;
struct wcd9335_codec {struct wcd_slim_codec_dai_data* dai; } ;
struct snd_soc_dapm_widget {size_t shift; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_POST_PMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct wcd9335_codec* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wcd_slim_codec_dai_data*,struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
				       struct snd_kcontrol *kc,
				       int event)
{
	struct snd_soc_component *comp = FUNC2(w->dapm);
	struct wcd9335_codec *wcd = FUNC1(comp);
	struct wcd_slim_codec_dai_data *dai = &wcd->dai[w->shift];

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		FUNC3(dai, comp);
		break;
	case SND_SOC_DAPM_POST_PMD:
		FUNC0(dai->sconfig.chs);

		break;
	}

	return 0;
}