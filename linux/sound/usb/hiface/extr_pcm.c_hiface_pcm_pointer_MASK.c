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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct pcm_substream {int /*<<< orphan*/  lock; int /*<<< orphan*/  dma_off; } ;
struct pcm_runtime {scalar_t__ panic; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_POS_XRUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcm_substream* FUNC1 (struct snd_pcm_substream*) ; 
 struct pcm_runtime* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC5(struct snd_pcm_substream *alsa_sub)
{
	struct pcm_substream *sub = FUNC1(alsa_sub);
	struct pcm_runtime *rt = FUNC2(alsa_sub);
	unsigned long flags;
	snd_pcm_uframes_t dma_offset;

	if (rt->panic || !sub)
		return SNDRV_PCM_POS_XRUN;

	FUNC3(&sub->lock, flags);
	dma_offset = sub->dma_off;
	FUNC4(&sub->lock, flags);
	return FUNC0(alsa_sub->runtime, dma_offset);
}