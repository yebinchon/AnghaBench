#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dapm_widget_list {int dummy; } ;
struct snd_soc_dapm_widget {int dummy; } ;
struct snd_soc_dai {struct snd_soc_dapm_widget* capture_widget; struct snd_soc_dapm_widget* playback_widget; TYPE_1__* component; } ;
struct snd_soc_card {int /*<<< orphan*/  dapm_mutex; } ;
struct TYPE_8__ {int /*<<< orphan*/  next; } ;
struct TYPE_7__ {struct snd_soc_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  SND_SOC_DAPM_CLASS_RUNTIME ; 
 int /*<<< orphan*/  SND_SOC_DAPM_DIR_IN ; 
 int /*<<< orphan*/  SND_SOC_DAPM_DIR_OUT ; 
 int FUNC1 (struct snd_soc_dapm_widget_list**,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_widget*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_dapm_widget*,TYPE_2__*,int (*) (struct snd_soc_dapm_widget*,int)) ; 
 int FUNC4 (struct snd_soc_dapm_widget*,TYPE_2__*,int (*) (struct snd_soc_dapm_widget*,int)) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 TYPE_2__ widgets ; 

int FUNC9(struct snd_soc_dai *dai, int stream,
	struct snd_soc_dapm_widget_list **list,
	bool (*custom_stop_condition)(struct snd_soc_dapm_widget *,
				      enum snd_soc_dapm_direction))
{
	struct snd_soc_card *card = dai->component->card;
	struct snd_soc_dapm_widget *w;
	FUNC0(widgets);
	int paths;
	int ret;

	FUNC6(&card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);

	if (stream == SNDRV_PCM_STREAM_PLAYBACK) {
		w = dai->playback_widget;
		FUNC2(w, SND_SOC_DAPM_DIR_OUT);
		paths = FUNC4(w, &widgets,
				custom_stop_condition);
	} else {
		w = dai->capture_widget;
		FUNC2(w, SND_SOC_DAPM_DIR_IN);
		paths = FUNC3(w, &widgets,
				custom_stop_condition);
	}

	/* Drop starting point */
	FUNC5(widgets.next);

	ret = FUNC1(list, &widgets);
	if (ret)
		paths = ret;

	FUNC8(paths, stream);
	FUNC7(&card->dapm_mutex);

	return paths;
}