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
struct uniphier_aio_sub {TYPE_1__* substream; int /*<<< orphan*/  lock; scalar_t__ threshold; } ;
struct snd_pcm_runtime {int period_size; int channels; int /*<<< orphan*/  dma_bytes; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_2__ {struct snd_pcm_runtime* runtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uniphier_aio_sub*) ; 
 int FUNC1 (struct uniphier_aio_sub*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct uniphier_aio_sub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct snd_pcm_runtime*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct uniphier_aio_sub *sub)
{
	struct snd_pcm_runtime *runtime = sub->substream->runtime;
	int bytes = runtime->period_size *
		runtime->channels * FUNC3(runtime, 1);
	int ret;

	FUNC5(&sub->lock);
	ret = FUNC1(sub, runtime->dma_bytes,
				      sub->threshold + bytes);
	if (!ret)
		sub->threshold += bytes;

	FUNC2(sub, runtime->dma_addr, runtime->dma_bytes, bytes);
	FUNC0(sub);
	FUNC6(&sub->lock);

	FUNC4(sub->substream);
}