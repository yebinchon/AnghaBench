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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  rate; } ;
struct pcm_substream {scalar_t__ period_off; scalar_t__ dma_off; } ;
struct pcm_runtime {scalar_t__ stream_state; int /*<<< orphan*/  stream_mutex; scalar_t__ panic; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPIPE ; 
 scalar_t__ STREAM_DISABLED ; 
 struct pcm_substream* FUNC0 (struct snd_pcm_substream*) ; 
 int FUNC1 (struct pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct pcm_runtime* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *alsa_sub)
{
	struct pcm_runtime *rt = FUNC6(alsa_sub);
	struct pcm_substream *sub = FUNC0(alsa_sub);
	struct snd_pcm_runtime *alsa_rt = alsa_sub->runtime;
	int ret;

	if (rt->panic)
		return -EPIPE;
	if (!sub)
		return -ENODEV;

	FUNC4(&rt->stream_mutex);

	FUNC3(rt);

	sub->dma_off = 0;
	sub->period_off = 0;

	if (rt->stream_state == STREAM_DISABLED) {

		ret = FUNC1(rt, alsa_rt->rate);
		if (ret) {
			FUNC5(&rt->stream_mutex);
			return ret;
		}
		ret = FUNC2(rt);
		if (ret) {
			FUNC5(&rt->stream_mutex);
			return ret;
		}
	}
	FUNC5(&rt->stream_mutex);
	return 0;
}