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
struct uniphier_aio_sub {int /*<<< orphan*/  lock; int /*<<< orphan*/  wr_offs; int /*<<< orphan*/  rd_offs; TYPE_1__* swm; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_pcm_substream {size_t stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int channels; int /*<<< orphan*/  dma_bytes; int /*<<< orphan*/  dma_addr; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_2__ {scalar_t__ dir; } ;

/* Variables and functions */
 scalar_t__ PORT_DIR_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct uniphier_aio_sub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_runtime*,int) ; 
 struct snd_soc_pcm_runtime* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uniphier_aio* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC7(
					struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_soc_pcm_runtime *rtd = FUNC3(substream);
	struct uniphier_aio *aio = FUNC6(rtd->cpu_dai);
	struct uniphier_aio_sub *sub = &aio->sub[substream->stream];
	int bytes = runtime->period_size *
		runtime->channels * FUNC2(runtime, 1);
	unsigned long flags;
	snd_pcm_uframes_t pos;

	FUNC4(&sub->lock, flags);
	FUNC0(sub, runtime->dma_addr, runtime->dma_bytes, bytes);

	if (sub->swm->dir == PORT_DIR_OUTPUT)
		pos = FUNC1(runtime, sub->rd_offs);
	else
		pos = FUNC1(runtime, sub->wr_offs);
	FUNC5(&sub->lock, flags);

	return pos;
}