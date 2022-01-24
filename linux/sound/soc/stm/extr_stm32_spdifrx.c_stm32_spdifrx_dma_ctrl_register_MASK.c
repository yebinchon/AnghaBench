#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int src_maxburst; int /*<<< orphan*/  src_addr_width; int /*<<< orphan*/  dst_addr; scalar_t__ src_addr; int /*<<< orphan*/  direction; } ;
struct stm32_spdifrx_data {int /*<<< orphan*/ * ctrl_chan; TYPE_3__ slave_config; TYPE_2__* dmab; scalar_t__ phys_addr; } ;
struct snd_dma_buffer {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_5__ {int /*<<< orphan*/  type; struct device* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV_IRAM ; 
 int /*<<< orphan*/  SPDIFRX_CSR_BUF_LENGTH ; 
 scalar_t__ STM32_SPDIFRX_CSR ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 TYPE_2__* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
					   struct stm32_spdifrx_data *spdifrx)
{
	int ret;

	spdifrx->ctrl_chan = FUNC4(dev, "rx-ctrl");
	if (FUNC0(spdifrx->ctrl_chan)) {
		FUNC2(dev, "dma_request_slave_channel failed\n");
		return FUNC1(spdifrx->ctrl_chan);
	}

	spdifrx->dmab = FUNC3(dev, sizeof(struct snd_dma_buffer),
				     GFP_KERNEL);
	if (!spdifrx->dmab)
		return -ENOMEM;

	spdifrx->dmab->dev.type = SNDRV_DMA_TYPE_DEV_IRAM;
	spdifrx->dmab->dev.dev = dev;
	ret = FUNC6(spdifrx->dmab->dev.type, dev,
				  SPDIFRX_CSR_BUF_LENGTH, spdifrx->dmab);
	if (ret < 0) {
		FUNC2(dev, "snd_dma_alloc_pages returned error %d\n", ret);
		return ret;
	}

	spdifrx->slave_config.direction = DMA_DEV_TO_MEM;
	spdifrx->slave_config.src_addr = (dma_addr_t)(spdifrx->phys_addr +
					 STM32_SPDIFRX_CSR);
	spdifrx->slave_config.dst_addr = spdifrx->dmab->addr;
	spdifrx->slave_config.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
	spdifrx->slave_config.src_maxburst = 1;

	ret = FUNC5(spdifrx->ctrl_chan,
				     &spdifrx->slave_config);
	if (ret < 0) {
		FUNC2(dev, "dmaengine_slave_config returned error %d\n", ret);
		spdifrx->ctrl_chan = NULL;
	}

	return ret;
}