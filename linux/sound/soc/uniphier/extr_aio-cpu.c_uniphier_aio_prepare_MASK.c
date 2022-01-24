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
struct uniphier_aio_sub {TYPE_1__* swm; int /*<<< orphan*/  pass_through; int /*<<< orphan*/  params; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {size_t stream; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ PORT_TYPE_CONV ; 
 int FUNC0 (struct uniphier_aio_sub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uniphier_aio_sub*,int) ; 
 int FUNC2 (struct uniphier_aio_sub*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct uniphier_aio_sub*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct uniphier_aio_sub*,int) ; 
 int FUNC5 (struct uniphier_aio_sub*) ; 
 int FUNC6 (struct uniphier_aio_sub*) ; 
 struct uniphier_aio* FUNC7 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				struct snd_soc_dai *dai)
{
	struct uniphier_aio *aio = FUNC7(dai);
	struct uniphier_aio_sub *sub = &aio->sub[substream->stream];
	int ret;

	ret = FUNC2(sub, sub->pass_through, &sub->params);
	if (ret)
		return ret;
	ret = FUNC3(sub, &sub->params);
	if (ret)
		return ret;
	FUNC1(sub, 1);

	ret = FUNC0(sub, sub->pass_through);
	if (ret)
		return ret;

	if (sub->swm->type == PORT_TYPE_CONV) {
		ret = FUNC6(sub);
		if (ret)
			return ret;
		ret = FUNC5(sub);
		if (ret)
			return ret;
		FUNC4(sub, 1);
	}

	return 0;
}