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
typedef  int /*<<< orphan*/  u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dmaengine_dai_dma_data {int addr_width; } ;
struct TYPE_2__ {scalar_t__ regs; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ S3C2410_IISMOD ; 
 int /*<<< orphan*/  S3C2410_IISMOD_16BIT ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__ s3c24xx_i2s ; 
 struct snd_dmaengine_dai_dma_data* FUNC3 (struct snd_soc_dai*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params,
				 struct snd_soc_dai *dai)
{
	struct snd_dmaengine_dai_dma_data *dma_data;
	u32 iismod;

	dma_data = FUNC3(dai, substream);

	/* Working copies of register */
	iismod = FUNC2(s3c24xx_i2s.regs + S3C2410_IISMOD);
	FUNC1("hw_params r: IISMOD: %x\n", iismod);

	switch (FUNC0(params)) {
	case 8:
		iismod &= ~S3C2410_IISMOD_16BIT;
		dma_data->addr_width = 1;
		break;
	case 16:
		iismod |= S3C2410_IISMOD_16BIT;
		dma_data->addr_width = 2;
		break;
	default:
		return -EINVAL;
	}

	FUNC4(iismod, s3c24xx_i2s.regs + S3C2410_IISMOD);
	FUNC1("hw_params w: IISMOD: %x\n", iismod);

	return 0;
}