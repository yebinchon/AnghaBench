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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {scalar_t__ rate_max; scalar_t__ rate_min; scalar_t__ channels_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct lola_stream {int opened; scalar_t__ index; int /*<<< orphan*/ * master; struct snd_pcm_substream* substream; } ;
struct lola_pcm {scalar_t__ num_streams; } ;
struct lola {int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  granularity; int /*<<< orphan*/  ref_count_rate; scalar_t__ sample_rate_max; scalar_t__ sample_rate_min; scalar_t__ sample_rate; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 struct lola_pcm* FUNC0 (struct snd_pcm_substream*) ; 
 struct lola_stream* FUNC1 (struct snd_pcm_substream*) ; 
 TYPE_1__ lola_pcm_hw ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lola* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct lola *chip = FUNC6(substream);
	struct lola_pcm *pcm = FUNC0(substream);
	struct lola_stream *str = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC2(&chip->open_mutex);
	if (str->opened) {
		FUNC3(&chip->open_mutex);
		return -EBUSY;
	}
	str->substream = substream;
	str->master = NULL;
	str->opened = 1;
	runtime->hw = lola_pcm_hw;
	runtime->hw.channels_max = pcm->num_streams - str->index;
	if (chip->sample_rate) {
		/* sample rate is locked */
		runtime->hw.rate_min = chip->sample_rate;
		runtime->hw.rate_max = chip->sample_rate;
	} else {
		runtime->hw.rate_min = chip->sample_rate_min;
		runtime->hw.rate_max = chip->sample_rate_max;
	}
	chip->ref_count_rate++;
	FUNC4(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
	/* period size = multiple of chip->granularity (8, 16 or 32 frames)*/
	FUNC5(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
				   chip->granularity);
	FUNC5(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
				   chip->granularity);
	FUNC3(&chip->open_mutex);
	return 0;
}