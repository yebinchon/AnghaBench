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
struct uniphier_aio_sub {int running; int /*<<< orphan*/  lock; int /*<<< orphan*/  compr_bytes; int /*<<< orphan*/  compr_addr; } ;
struct uniphier_aio {TYPE_2__* chip; struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_compr_stream {size_t direction; struct snd_compr_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_compr_runtime {int fragment_size; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct uniphier_aio_sub*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uniphier_aio_sub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uniphier_aio* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_compr_stream *cstream,
				      int cmd)
{
	struct snd_soc_pcm_runtime *rtd = cstream->private_data;
	struct snd_compr_runtime *runtime = cstream->runtime;
	struct uniphier_aio *aio = FUNC5(rtd->cpu_dai);
	struct uniphier_aio_sub *sub = &aio->sub[cstream->direction];
	struct device *dev = &aio->chip->pdev->dev;
	int bytes = runtime->fragment_size, ret = 0;
	unsigned long flags;

	FUNC3(&sub->lock, flags);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC1(sub, sub->compr_addr, sub->compr_bytes, bytes);
		FUNC0(sub, 1);
		sub->running = 1;

		break;
	case SNDRV_PCM_TRIGGER_STOP:
		sub->running = 0;
		FUNC0(sub, 0);

		break;
	default:
		FUNC2(dev, "Unknown trigger(%d)\n", cmd);
		ret = -EINVAL;
	}
	FUNC4(&sub->lock, flags);

	return ret;
}