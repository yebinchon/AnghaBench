#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {TYPE_1__* dai_link; int /*<<< orphan*/  dev; TYPE_2__* codec_dai; TYPE_2__* cpu_dai; } ;
struct snd_soc_dapm_widget_list {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  capture_active; int /*<<< orphan*/  playback_active; int /*<<< orphan*/  active; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  dynamic; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ,struct snd_soc_dapm_widget_list**) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_widget_list**) ; 
 int FUNC6 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ,struct snd_soc_dapm_widget_list**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_pcm_runtime *fe, int new)
{
	struct snd_soc_dapm_widget_list *list;
	int count, paths;

	if (!fe->dai_link->dynamic)
		return 0;

	/* only check active links */
	if (!fe->cpu_dai->active)
		return 0;

	/* DAPM sync will call this to update DSP paths */
	FUNC0(fe->dev, "ASoC: DPCM %s runtime update for FE %s\n",
		new ? "new" : "old", fe->dai_link->name);

	/* skip if FE doesn't have playback capability */
	if (!FUNC9(fe->cpu_dai,   SNDRV_PCM_STREAM_PLAYBACK) ||
	    !FUNC9(fe->codec_dai, SNDRV_PCM_STREAM_PLAYBACK))
		goto capture;

	/* skip if FE isn't currently playing */
	if (!fe->cpu_dai->playback_active || !fe->codec_dai->playback_active)
		goto capture;

	paths = FUNC4(fe, SNDRV_PCM_STREAM_PLAYBACK, &list);
	if (paths < 0) {
		FUNC1(fe->dev, "ASoC: %s no valid %s path\n",
			 fe->dai_link->name,  "playback");
		return paths;
	}

	/* update any playback paths */
	count = FUNC6(fe, SNDRV_PCM_STREAM_PLAYBACK, &list, new);
	if (count) {
		if (new)
			FUNC7(fe, SNDRV_PCM_STREAM_PLAYBACK);
		else
			FUNC8(fe, SNDRV_PCM_STREAM_PLAYBACK);

		FUNC3(fe, SNDRV_PCM_STREAM_PLAYBACK);
		FUNC2(fe, SNDRV_PCM_STREAM_PLAYBACK);
	}

	FUNC5(&list);

capture:
	/* skip if FE doesn't have capture capability */
	if (!FUNC9(fe->cpu_dai,   SNDRV_PCM_STREAM_CAPTURE) ||
	    !FUNC9(fe->codec_dai, SNDRV_PCM_STREAM_CAPTURE))
		return 0;

	/* skip if FE isn't currently capturing */
	if (!fe->cpu_dai->capture_active || !fe->codec_dai->capture_active)
		return 0;

	paths = FUNC4(fe, SNDRV_PCM_STREAM_CAPTURE, &list);
	if (paths < 0) {
		FUNC1(fe->dev, "ASoC: %s no valid %s path\n",
			 fe->dai_link->name,  "capture");
		return paths;
	}

	/* update any old capture paths */
	count = FUNC6(fe, SNDRV_PCM_STREAM_CAPTURE, &list, new);
	if (count) {
		if (new)
			FUNC7(fe, SNDRV_PCM_STREAM_CAPTURE);
		else
			FUNC8(fe, SNDRV_PCM_STREAM_CAPTURE);

		FUNC3(fe, SNDRV_PCM_STREAM_CAPTURE);
		FUNC2(fe, SNDRV_PCM_STREAM_CAPTURE);
	}

	FUNC5(&list);

	return 0;
}