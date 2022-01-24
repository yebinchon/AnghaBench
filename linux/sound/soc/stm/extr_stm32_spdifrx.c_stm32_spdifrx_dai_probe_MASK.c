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
struct TYPE_2__ {int maxburst; scalar_t__ addr; } ;
struct stm32_spdifrx_data {TYPE_1__ dma_params; scalar_t__ phys_addr; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ STM32_SPDIFRX_DR ; 
 struct stm32_spdifrx_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *cpu_dai)
{
	struct stm32_spdifrx_data *spdifrx = FUNC0(cpu_dai->dev);

	spdifrx->dma_params.addr = (dma_addr_t)(spdifrx->phys_addr +
				   STM32_SPDIFRX_DR);
	spdifrx->dma_params.maxburst = 1;

	FUNC1(cpu_dai, NULL, &spdifrx->dma_params);

	return FUNC2(cpu_dai);
}