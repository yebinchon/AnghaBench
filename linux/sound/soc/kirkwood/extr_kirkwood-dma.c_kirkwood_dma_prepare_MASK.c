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
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned long dma_addr; int /*<<< orphan*/  buffer_size; } ;
struct kirkwood_dma_data {scalar_t__ io; } ;

/* Variables and functions */
 scalar_t__ KIRKWOOD_PLAY_BUF_ADDR ; 
 scalar_t__ KIRKWOOD_PLAY_BUF_SIZE ; 
 scalar_t__ KIRKWOOD_PLAY_BYTE_INT_COUNT ; 
 scalar_t__ KIRKWOOD_REC_BUF_ADDR ; 
 scalar_t__ KIRKWOOD_REC_BUF_SIZE ; 
 scalar_t__ KIRKWOOD_REC_BYTE_INT_COUNT ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 unsigned long FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct kirkwood_dma_data* FUNC1 (struct snd_pcm_substream*) ; 
 unsigned long FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct kirkwood_dma_data *priv = FUNC1(substream);
	unsigned long size, count;

	/* compute buffer size in term of "words" as requested in specs */
	size = FUNC0(runtime, runtime->buffer_size);
	size = (size>>2)-1;
	count = FUNC2(substream);

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		FUNC3(count, priv->io + KIRKWOOD_PLAY_BYTE_INT_COUNT);
		FUNC3(runtime->dma_addr, priv->io + KIRKWOOD_PLAY_BUF_ADDR);
		FUNC3(size, priv->io + KIRKWOOD_PLAY_BUF_SIZE);
	} else {
		FUNC3(count, priv->io + KIRKWOOD_REC_BYTE_INT_COUNT);
		FUNC3(runtime->dma_addr, priv->io + KIRKWOOD_REC_BUF_ADDR);
		FUNC3(size, priv->io + KIRKWOOD_REC_BUF_SIZE);
	}


	return 0;
}