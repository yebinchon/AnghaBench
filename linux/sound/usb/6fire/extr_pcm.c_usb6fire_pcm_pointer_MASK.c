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
struct snd_pcm_substream {int dummy; } ;
struct pcm_substream {int /*<<< orphan*/  lock; int /*<<< orphan*/  dma_off; } ;
struct pcm_runtime {scalar_t__ panic; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_POS_XRUN ; 
 struct pcm_runtime* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pcm_substream* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC4(
		struct snd_pcm_substream *alsa_sub)
{
	struct pcm_substream *sub = FUNC3(alsa_sub);
	struct pcm_runtime *rt = FUNC0(alsa_sub);
	unsigned long flags;
	snd_pcm_uframes_t ret;

	if (rt->panic || !sub)
		return SNDRV_PCM_POS_XRUN;

	FUNC1(&sub->lock, flags);
	ret = sub->dma_off;
	FUNC2(&sub->lock, flags);
	return ret;
}