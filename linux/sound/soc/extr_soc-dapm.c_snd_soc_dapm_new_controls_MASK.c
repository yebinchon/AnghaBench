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
struct snd_soc_dapm_widget {int dummy; } ;
struct snd_soc_dapm_context {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dapm_mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_soc_dapm_widget*) ; 
 int FUNC1 (struct snd_soc_dapm_widget*) ; 
 int /*<<< orphan*/  SND_SOC_DAPM_CLASS_INIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct snd_soc_dapm_widget* FUNC4 (struct snd_soc_dapm_context*,struct snd_soc_dapm_widget const*) ; 

int FUNC5(struct snd_soc_dapm_context *dapm,
	const struct snd_soc_dapm_widget *widget,
	int num)
{
	struct snd_soc_dapm_widget *w;
	int i;
	int ret = 0;

	FUNC2(&dapm->card->dapm_mutex, SND_SOC_DAPM_CLASS_INIT);
	for (i = 0; i < num; i++) {
		w = FUNC4(dapm, widget);
		if (FUNC0(w)) {
			ret = FUNC1(w);
			break;
		}
		widget++;
	}
	FUNC3(&dapm->card->dapm_mutex);
	return ret;
}