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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ rate; } ;
struct pcm_substream {scalar_t__ period_off; scalar_t__ dma_off; } ;
struct pcm_runtime {scalar_t__ stream_state; size_t rate; int /*<<< orphan*/  stream_mutex; TYPE_2__* chip; scalar_t__ panic; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPIPE ; 
 scalar_t__ STREAM_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__* rates ; 
 struct pcm_runtime* FUNC4 (struct snd_pcm_substream*) ; 
 struct pcm_substream* FUNC5 (struct snd_pcm_substream*) ; 
 int FUNC6 (struct pcm_runtime*) ; 
 int FUNC7 (struct pcm_runtime*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *alsa_sub)
{
	struct pcm_runtime *rt = FUNC4(alsa_sub);
	struct pcm_substream *sub = FUNC5(alsa_sub);
	struct snd_pcm_runtime *alsa_rt = alsa_sub->runtime;
	int ret;

	if (rt->panic)
		return -EPIPE;
	if (!sub)
		return -ENODEV;

	FUNC2(&rt->stream_mutex);
	sub->dma_off = 0;
	sub->period_off = 0;

	if (rt->stream_state == STREAM_DISABLED) {
		for (rt->rate = 0; rt->rate < FUNC0(rates); rt->rate++)
			if (alsa_rt->rate == rates[rt->rate])
				break;
		if (rt->rate == FUNC0(rates)) {
			FUNC3(&rt->stream_mutex);
			FUNC1(&rt->chip->dev->dev,
				"invalid rate %d in prepare.\n",
				alsa_rt->rate);
			return -EINVAL;
		}

		ret = FUNC6(rt);
		if (ret) {
			FUNC3(&rt->stream_mutex);
			return ret;
		}
		ret = FUNC7(rt);
		if (ret) {
			FUNC3(&rt->stream_mutex);
			FUNC1(&rt->chip->dev->dev,
				"could not start pcm stream.\n");
			return ret;
		}
	}
	FUNC3(&rt->stream_mutex);
	return 0;
}