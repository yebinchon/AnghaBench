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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct dw_i2s_dev* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct dw_i2s_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  rx_fn; int /*<<< orphan*/  tx_fn; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_FORMAT_S16_LE 130 
#define  SNDRV_PCM_FORMAT_S24_LE 129 
#define  SNDRV_PCM_FORMAT_S32_LE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dw_pcm_rx_16 ; 
 int /*<<< orphan*/  dw_pcm_rx_32 ; 
 int /*<<< orphan*/  dw_pcm_tx_16 ; 
 int /*<<< orphan*/  dw_pcm_tx_32 ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
		struct snd_pcm_hw_params *hw_params)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct dw_i2s_dev *dev = runtime->private_data;
	int ret;

	switch (FUNC2(hw_params)) {
	case 2:
		break;
	default:
		FUNC0(dev->dev, "invalid channels number\n");
		return -EINVAL;
	}

	switch (FUNC3(hw_params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		dev->tx_fn = dw_pcm_tx_16;
		dev->rx_fn = dw_pcm_rx_16;
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
	case SNDRV_PCM_FORMAT_S32_LE:
		dev->tx_fn = dw_pcm_tx_32;
		dev->rx_fn = dw_pcm_rx_32;
		break;
	default:
		FUNC0(dev->dev, "invalid format\n");
		return -EINVAL;
	}

	ret = FUNC4(substream,
			FUNC1(hw_params));
	if (ret < 0)
		return ret;
	else
		return 0;
}