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
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct TYPE_6__ {int rate_max; int /*<<< orphan*/  rates; } ;
struct snd_pcm_runtime {TYPE_3__ hw; } ;
struct pcm_substream {int active; struct snd_pcm_substream* instance; } ;
struct pcm_runtime {int /*<<< orphan*/  stream_mutex; scalar_t__ extra_freq; TYPE_2__* chip; struct pcm_substream playback; scalar_t__ panic; } ;
struct device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPIPE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_KNOT ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  constraints_extra_rates ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__ pcm_hw ; 
 int FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pcm_runtime* FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *alsa_sub)
{
	struct pcm_runtime *rt = FUNC4(alsa_sub);
	struct pcm_substream *sub = NULL;
	struct snd_pcm_runtime *alsa_rt = alsa_sub->runtime;
	int ret;

	if (rt->panic)
		return -EPIPE;

	FUNC1(&rt->stream_mutex);
	alsa_rt->hw = pcm_hw;

	if (alsa_sub->stream == SNDRV_PCM_STREAM_PLAYBACK)
		sub = &rt->playback;

	if (!sub) {
		struct device *device = &rt->chip->dev->dev;
		FUNC2(&rt->stream_mutex);
		FUNC0(device, "Invalid stream type\n");
		return -EINVAL;
	}

	if (rt->extra_freq) {
		alsa_rt->hw.rates |= SNDRV_PCM_RATE_KNOT;
		alsa_rt->hw.rate_max = 384000;

		/* explicit constraints needed as we added SNDRV_PCM_RATE_KNOT */
		ret = FUNC3(alsa_sub->runtime, 0,
						 SNDRV_PCM_HW_PARAM_RATE,
						 &constraints_extra_rates);
		if (ret < 0) {
			FUNC2(&rt->stream_mutex);
			return ret;
		}
	}

	sub->instance = alsa_sub;
	sub->active = false;
	FUNC2(&rt->stream_mutex);
	return 0;
}