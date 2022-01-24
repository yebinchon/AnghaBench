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
struct uniphier_aio_sub {int /*<<< orphan*/  lock; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_pcm_substream {size_t stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int channels; scalar_t__ dma_bytes; scalar_t__ dma_addr; } ;

/* Variables and functions */
 int FUNC0 (struct uniphier_aio_sub*) ; 
 int FUNC1 (struct uniphier_aio_sub*,scalar_t__,scalar_t__,int) ; 
 int FUNC2 (struct snd_pcm_runtime*,int) ; 
 struct snd_soc_pcm_runtime* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uniphier_aio* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_soc_pcm_runtime *rtd = FUNC3(substream);
	struct uniphier_aio *aio = FUNC6(rtd->cpu_dai);
	struct uniphier_aio_sub *sub = &aio->sub[substream->stream];
	int bytes = runtime->period_size *
		runtime->channels * FUNC2(runtime, 1);
	unsigned long flags;
	int ret;

	ret = FUNC0(sub);
	if (ret)
		return ret;

	FUNC4(&sub->lock, flags);
	ret = FUNC1(sub, runtime->dma_addr,
				   runtime->dma_addr + runtime->dma_bytes,
				   bytes);
	FUNC5(&sub->lock, flags);
	if (ret)
		return ret;

	return 0;
}