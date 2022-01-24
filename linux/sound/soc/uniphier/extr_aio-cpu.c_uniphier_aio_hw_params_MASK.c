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
struct snd_pcm_hw_params {int dummy; } ;
struct uniphier_aio_sub {int setting; int /*<<< orphan*/  vol; struct snd_pcm_hw_params params; } ;
struct uniphier_aio {TYPE_2__* chip; struct uniphier_aio_sub* sub; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {size_t stream; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUD_CLK_A ; 
 int EINVAL ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct uniphier_aio_sub*) ; 
 int /*<<< orphan*/  FUNC1 (struct uniphier_aio_sub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uniphier_aio_sub*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct uniphier_aio* FUNC6 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				  struct snd_pcm_hw_params *params,
				  struct snd_soc_dai *dai)
{
	struct uniphier_aio *aio = FUNC6(dai);
	struct uniphier_aio_sub *sub = &aio->sub[substream->stream];
	struct device *dev = &aio->chip->pdev->dev;
	int freq, ret;

	switch (FUNC4(params)) {
	case 48000:
	case 32000:
	case 24000:
		freq = 12288000;
		break;
	case 44100:
	case 22050:
		freq = 11289600;
		break;
	default:
		FUNC3(dev, "Rate is not supported(%d)\n",
			FUNC4(params));
		return -EINVAL;
	}
	ret = FUNC5(dai, AUD_CLK_A,
				     freq, SND_SOC_CLOCK_OUT);
	if (ret)
		return ret;

	sub->params = *params;
	sub->setting = 1;

	FUNC0(sub);
	FUNC1(sub, sub->vol);
	FUNC2(sub);

	return 0;
}