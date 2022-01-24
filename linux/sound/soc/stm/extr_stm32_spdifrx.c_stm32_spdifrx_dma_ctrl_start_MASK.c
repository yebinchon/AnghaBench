#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stm32_spdifrx_data {int /*<<< orphan*/  ctrl_chan; TYPE_2__* desc; TYPE_1__* dmab; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
struct TYPE_5__ {struct stm32_spdifrx_data* callback_param; int /*<<< orphan*/  callback; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int EINVAL ; 
 int /*<<< orphan*/  SPDIFRX_CSR_BUF_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  stm32_spdifrx_dma_complete ; 

__attribute__((used)) static int FUNC4(struct stm32_spdifrx_data *spdifrx)
{
	dma_cookie_t cookie;
	int err;

	spdifrx->desc = FUNC2(spdifrx->ctrl_chan,
						    spdifrx->dmab->addr,
						    SPDIFRX_CSR_BUF_LENGTH,
						    DMA_DEV_TO_MEM,
						    DMA_CTRL_ACK);
	if (!spdifrx->desc)
		return -EINVAL;

	spdifrx->desc->callback = stm32_spdifrx_dma_complete;
	spdifrx->desc->callback_param = spdifrx;
	cookie = FUNC3(spdifrx->desc);
	err = FUNC1(cookie);
	if (err)
		return -EINVAL;

	FUNC0(spdifrx->ctrl_chan);

	return 0;
}