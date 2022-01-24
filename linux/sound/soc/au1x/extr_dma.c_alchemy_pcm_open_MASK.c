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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct alchemy_pcm_ctx {TYPE_1__* stream; } ;
struct TYPE_2__ {int /*<<< orphan*/ * buffer; struct snd_pcm_substream* substream; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int DMA_NC ; 
 int ENODEV ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  alchemy_pcm_hardware ; 
 int /*<<< orphan*/  au1000_dma_interrupt ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int* FUNC3 (int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 struct alchemy_pcm_ctx* FUNC5 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct alchemy_pcm_ctx *ctx = FUNC5(substream);
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	int *dmaids, s = substream->stream;
	char *name;

	dmaids = FUNC3(rtd->cpu_dai, substream);
	if (!dmaids)
		return -ENODEV;	/* whoa, has ordering changed? */

	/* DMA setup */
	name = (s == SNDRV_PCM_STREAM_PLAYBACK) ? "audio-tx" : "audio-rx";
	ctx->stream[s].dma = FUNC1(dmaids[s], name,
					au1000_dma_interrupt, 0,
					&ctx->stream[s]);
	FUNC2(ctx->stream[s].dma,
		     FUNC0(ctx->stream[s].dma) & ~DMA_NC);

	ctx->stream[s].substream = substream;
	ctx->stream[s].buffer = NULL;
	FUNC4(substream, &alchemy_pcm_hardware);

	return 0;
}