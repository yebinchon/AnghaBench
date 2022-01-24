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
struct uniphier_aio_sub {int /*<<< orphan*/  pass_through; int /*<<< orphan*/  iec_pc; int /*<<< orphan*/  params; int /*<<< orphan*/  lock; scalar_t__ compr_bytes; scalar_t__ compr_addr; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_compr_stream {size_t direction; struct snd_compr_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_compr_runtime {int fragment_size; } ;

/* Variables and functions */
 int FUNC0 (struct uniphier_aio_sub*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct uniphier_aio_sub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uniphier_aio_sub*,int) ; 
 int FUNC3 (struct uniphier_aio_sub*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct uniphier_aio_sub*) ; 
 int FUNC5 (struct uniphier_aio_sub*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uniphier_aio* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snd_compr_stream *cstream)
{
	struct snd_soc_pcm_runtime *rtd = cstream->private_data;
	struct snd_compr_runtime *runtime = cstream->runtime;
	struct uniphier_aio *aio = FUNC8(rtd->cpu_dai);
	struct uniphier_aio_sub *sub = &aio->sub[cstream->direction];
	int bytes = runtime->fragment_size;
	unsigned long flags;
	int ret;

	ret = FUNC4(sub);
	if (ret)
		return ret;

	FUNC6(&sub->lock, flags);
	ret = FUNC5(sub, sub->compr_addr,
				   sub->compr_addr + sub->compr_bytes,
				   bytes);
	FUNC7(&sub->lock, flags);
	if (ret)
		return ret;

	ret = FUNC3(sub, sub->pass_through, &sub->params);
	if (ret)
		return ret;
	ret = FUNC1(sub, sub->iec_pc);
	if (ret)
		return ret;
	FUNC2(sub, 1);

	ret = FUNC0(sub, sub->pass_through);
	if (ret)
		return ret;

	return 0;
}