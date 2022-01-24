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
typedef  int u32 ;
struct sspa_priv {struct snd_dmaengine_dai_dma_data* dma_params; struct ssp_device* sspa; } ;
struct ssp_device {scalar_t__ phys_base; } ;
struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dmaengine_dai_dma_data {scalar_t__ addr; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_FORMAT_S16_LE 132 
#define  SNDRV_PCM_FORMAT_S20_3LE 131 
#define  SNDRV_PCM_FORMAT_S24_3LE 130 
#define  SNDRV_PCM_FORMAT_S32_LE 129 
#define  SNDRV_PCM_FORMAT_S8 128 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  SSPA_CTL_16_BITS ; 
 int /*<<< orphan*/  SSPA_CTL_20_BITS ; 
 int /*<<< orphan*/  SSPA_CTL_24_BITS ; 
 int /*<<< orphan*/  SSPA_CTL_32_BITS ; 
 int /*<<< orphan*/  SSPA_CTL_8_BITS ; 
 int FUNC0 (scalar_t__) ; 
 int SSPA_CTL_XFRLEN1_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SSPA_CTL_XSSZ1_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SSPA_CTL_XWDLEN1_MASK ; 
 int /*<<< orphan*/  SSPA_RXCTL ; 
 scalar_t__ SSPA_RXD ; 
 int /*<<< orphan*/  SSPA_RXFIFO_UL ; 
 int /*<<< orphan*/  SSPA_TXCTL ; 
 scalar_t__ SSPA_TXD ; 
 int /*<<< orphan*/  SSPA_TXFIFO_LL ; 
 int FUNC3 (struct ssp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ssp_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct snd_pcm_hw_params*) ; 
 int FUNC6 (struct snd_pcm_hw_params*) ; 
 struct sspa_priv* FUNC7 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dai*,struct snd_pcm_substream*,struct snd_dmaengine_dai_dma_data*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
			       struct snd_pcm_hw_params *params,
			       struct snd_soc_dai *dai)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
	struct sspa_priv *sspa_priv = FUNC7(dai);
	struct ssp_device *sspa = sspa_priv->sspa;
	struct snd_dmaengine_dai_dma_data *dma_params;
	u32 sspa_ctrl;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		sspa_ctrl = FUNC3(sspa, SSPA_TXCTL);
	else
		sspa_ctrl = FUNC3(sspa, SSPA_RXCTL);

	sspa_ctrl &= ~SSPA_CTL_XFRLEN1_MASK;
	sspa_ctrl |= FUNC0(FUNC5(params) - 1);
	sspa_ctrl &= ~SSPA_CTL_XWDLEN1_MASK;
	sspa_ctrl |= FUNC2(SSPA_CTL_32_BITS);
	sspa_ctrl &= ~SSPA_CTL_XSSZ1_MASK;

	switch (FUNC6(params)) {
	case SNDRV_PCM_FORMAT_S8:
		sspa_ctrl |= FUNC1(SSPA_CTL_8_BITS);
		break;
	case SNDRV_PCM_FORMAT_S16_LE:
		sspa_ctrl |= FUNC1(SSPA_CTL_16_BITS);
		break;
	case SNDRV_PCM_FORMAT_S20_3LE:
		sspa_ctrl |= FUNC1(SSPA_CTL_20_BITS);
		break;
	case SNDRV_PCM_FORMAT_S24_3LE:
		sspa_ctrl |= FUNC1(SSPA_CTL_24_BITS);
		break;
	case SNDRV_PCM_FORMAT_S32_LE:
		sspa_ctrl |= FUNC1(SSPA_CTL_32_BITS);
		break;
	default:
		return -EINVAL;
	}

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		FUNC4(sspa, SSPA_TXCTL, sspa_ctrl);
		FUNC4(sspa, SSPA_TXFIFO_LL, 0x1);
	} else {
		FUNC4(sspa, SSPA_RXCTL, sspa_ctrl);
		FUNC4(sspa, SSPA_RXFIFO_UL, 0x0);
	}

	dma_params = &sspa_priv->dma_params[substream->stream];
	dma_params->addr = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ?
				(sspa->phys_base + SSPA_TXD) :
				(sspa->phys_base + SSPA_RXD);
	FUNC8(cpu_dai, substream, dma_params);
	return 0;
}