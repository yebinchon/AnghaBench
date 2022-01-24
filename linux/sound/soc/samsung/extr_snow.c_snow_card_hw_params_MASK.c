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
struct snow_priv {int /*<<< orphan*/  clk_i2s_bus; } ;
struct snd_soc_pcm_runtime {TYPE_1__* card; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (unsigned int const*) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct snow_priv* FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				      struct snd_pcm_hw_params *params)
{
	static const unsigned int pll_rate[] = {
		73728000U, 67737602U, 49152000U, 45158401U, 32768001U
	};
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snow_priv *priv = FUNC6(rtd->card);
	int bfs, psr, rfs, bitwidth;
	unsigned long int rclk;
	long int freq = -EINVAL;
	int ret, i;

	bitwidth = FUNC5(FUNC3(params));
	if (bitwidth < 0) {
		FUNC2(rtd->card->dev, "Invalid bit-width: %d\n", bitwidth);
		return bitwidth;
	}

	if (bitwidth != 16 && bitwidth != 24) {
		FUNC2(rtd->card->dev, "Unsupported bit-width: %d\n", bitwidth);
		return -EINVAL;
	}

	bfs = 2 * bitwidth;

	switch (FUNC4(params)) {
	case 16000:
	case 22050:
	case 24000:
	case 32000:
	case 44100:
	case 48000:
	case 88200:
	case 96000:
		rfs = 8 * bfs;
		break;
	case 64000:
		rfs = 384;
		break;
	case 8000:
	case 11025:
	case 12000:
		rfs = 16 * bfs;
		break;
	default:
		return -EINVAL;
	}

	rclk = FUNC4(params) * rfs;

	for (psr = 8; psr > 0; psr /= 2) {
		for (i = 0; i < FUNC0(pll_rate); i++) {
			if ((pll_rate[i] - rclk * psr) <= 2) {
				freq = pll_rate[i];
				break;
			}
		}
	}
	if (freq < 0) {
		FUNC2(rtd->card->dev, "Unsupported RCLK rate: %lu\n", rclk);
		return -EINVAL;
	}

	ret = FUNC1(priv->clk_i2s_bus, freq);
	if (ret < 0) {
		FUNC2(rtd->card->dev, "I2S bus clock rate set failed\n");
		return ret;
	}

	return 0;
}