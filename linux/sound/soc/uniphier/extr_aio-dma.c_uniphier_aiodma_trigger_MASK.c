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
struct uniphier_aio_sub {int running; int /*<<< orphan*/  lock; } ;
struct uniphier_aio {TYPE_2__* chip; struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_pcm_substream {size_t stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int channels; int /*<<< orphan*/  dma_bytes; int /*<<< orphan*/  dma_addr; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct uniphier_aio_sub*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uniphier_aio_sub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (struct snd_pcm_runtime*,int) ; 
 struct snd_soc_pcm_runtime* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uniphier_aio* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_soc_pcm_runtime *rtd = FUNC4(substream);
	struct uniphier_aio *aio = FUNC7(rtd->cpu_dai);
	struct uniphier_aio_sub *sub = &aio->sub[substream->stream];
	struct device *dev = &aio->chip->pdev->dev;
	int bytes = runtime->period_size *
		runtime->channels * FUNC3(runtime, 1);
	unsigned long flags;

	FUNC5(&sub->lock, flags);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC1(sub, runtime->dma_addr, runtime->dma_bytes,
			       bytes);
		FUNC0(sub, 1);
		sub->running = 1;

		break;
	case SNDRV_PCM_TRIGGER_STOP:
		sub->running = 0;
		FUNC0(sub, 0);

		break;
	default:
		FUNC2(dev, "Unknown trigger(%d) ignored\n", cmd);
		break;
	}
	FUNC6(&sub->lock, flags);

	return 0;
}