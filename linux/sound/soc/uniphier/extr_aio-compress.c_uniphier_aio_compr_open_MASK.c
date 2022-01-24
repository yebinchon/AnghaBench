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
struct uniphier_aio_sub {int pass_through; int use_mmap; struct snd_compr_stream* cstream; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_compr_stream {size_t direction; struct snd_soc_pcm_runtime* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct uniphier_aio_sub*) ; 
 int FUNC1 (struct snd_soc_pcm_runtime*) ; 
 struct uniphier_aio* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_compr_stream *cstream)
{
	struct snd_soc_pcm_runtime *rtd = cstream->private_data;
	struct uniphier_aio *aio = FUNC2(rtd->cpu_dai);
	struct uniphier_aio_sub *sub = &aio->sub[cstream->direction];
	int ret;

	if (sub->cstream)
		return -EBUSY;

	sub->cstream = cstream;
	sub->pass_through = 1;
	sub->use_mmap = false;

	ret = FUNC1(rtd);
	if (ret)
		return ret;

	ret = FUNC0(sub);
	if (ret)
		return ret;

	return 0;
}