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
struct stm32_spdifrx_data {int /*<<< orphan*/  regmap; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  SPDIFRX_CR_RXDMAEN ; 
 int /*<<< orphan*/  SPDIFRX_IMR_OVRIE ; 
 int /*<<< orphan*/  STM32_SPDIFRX_CR ; 
 int /*<<< orphan*/  STM32_SPDIFRX_IMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct stm32_spdifrx_data* FUNC1 (struct snd_soc_dai*) ; 
 int FUNC2 (struct stm32_spdifrx_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_spdifrx_data*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream, int cmd,
				 struct snd_soc_dai *cpu_dai)
{
	struct stm32_spdifrx_data *spdifrx = FUNC1(cpu_dai);
	int ret = 0;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		FUNC0(spdifrx->regmap, STM32_SPDIFRX_IMR,
				   SPDIFRX_IMR_OVRIE, SPDIFRX_IMR_OVRIE);

		FUNC0(spdifrx->regmap, STM32_SPDIFRX_CR,
				   SPDIFRX_CR_RXDMAEN, SPDIFRX_CR_RXDMAEN);

		ret = FUNC2(spdifrx);
		break;
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC3(spdifrx);
		break;
	default:
		return -EINVAL;
	}

	return ret;
}