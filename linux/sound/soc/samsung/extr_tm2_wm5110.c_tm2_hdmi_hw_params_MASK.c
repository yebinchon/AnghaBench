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
struct snd_soc_pcm_runtime {TYPE_1__* card; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SAMSUNG_I2S_DIV_BCLK ; 
 int /*<<< orphan*/  SAMSUNG_I2S_OPCLK ; 
 int /*<<< orphan*/  SAMSUNG_I2S_OPCLK_PCLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_dai*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
			      struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
	unsigned int bfs;
	int bitwidth, ret;

	bitwidth = FUNC3(FUNC1(params));
	if (bitwidth < 0) {
		FUNC0(rtd->card->dev, "Invalid bit-width: %d\n", bitwidth);
		return bitwidth;
	}

	switch (bitwidth) {
	case 48:
		bfs = 64;
		break;
	case 16:
		bfs = 32;
		break;
	default:
		FUNC0(rtd->card->dev, "Unsupported bit-width: %d\n", bitwidth);
		return -EINVAL;
	}

	switch (FUNC2(params)) {
	case 48000:
	case 96000:
	case 192000:
		break;
	default:
		FUNC0(rtd->card->dev, "Unsupported sample rate: %d\n",
			FUNC2(params));
		return -EINVAL;
	}

	ret = FUNC5(cpu_dai, SAMSUNG_I2S_OPCLK,
					0, SAMSUNG_I2S_OPCLK_PCLK);
	if (ret < 0)
		return ret;

	ret = FUNC4(cpu_dai, SAMSUNG_I2S_DIV_BCLK, bfs);
	if (ret < 0)
		return ret;

	return 0;
}