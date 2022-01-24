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
struct uniphier_aio_sub {int use_mmap; scalar_t__ pass_through; struct snd_pcm_substream* substream; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {size_t stream; } ;

/* Variables and functions */
 int FUNC0 (struct uniphier_aio_sub*) ; 
 struct uniphier_aio* FUNC1 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
				struct snd_soc_dai *dai)
{
	struct uniphier_aio *aio = FUNC1(dai);
	struct uniphier_aio_sub *sub = &aio->sub[substream->stream];
	int ret;

	sub->substream = substream;
	sub->pass_through = 0;
	sub->use_mmap = true;

	ret = FUNC0(sub);
	if (ret)
		return ret;

	return 0;
}