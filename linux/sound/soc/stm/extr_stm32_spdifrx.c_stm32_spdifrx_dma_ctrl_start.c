
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stm32_spdifrx_data {int ctrl_chan; TYPE_2__* desc; TYPE_1__* dmab; } ;
typedef int dma_cookie_t ;
struct TYPE_5__ {struct stm32_spdifrx_data* callback_param; int callback; } ;
struct TYPE_4__ {int addr; } ;


 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int EINVAL ;
 int SPDIFRX_CSR_BUF_LENGTH ;
 int dma_async_issue_pending (int ) ;
 int dma_submit_error (int ) ;
 TYPE_2__* dmaengine_prep_slave_single (int ,int ,int ,int ,int ) ;
 int dmaengine_submit (TYPE_2__*) ;
 int stm32_spdifrx_dma_complete ;

__attribute__((used)) static int stm32_spdifrx_dma_ctrl_start(struct stm32_spdifrx_data *spdifrx)
{
 dma_cookie_t cookie;
 int err;

 spdifrx->desc = dmaengine_prep_slave_single(spdifrx->ctrl_chan,
          spdifrx->dmab->addr,
          SPDIFRX_CSR_BUF_LENGTH,
          DMA_DEV_TO_MEM,
          DMA_CTRL_ACK);
 if (!spdifrx->desc)
  return -EINVAL;

 spdifrx->desc->callback = stm32_spdifrx_dma_complete;
 spdifrx->desc->callback_param = spdifrx;
 cookie = dmaengine_submit(spdifrx->desc);
 err = dma_submit_error(cookie);
 if (err)
  return -EINVAL;

 dma_async_issue_pending(spdifrx->ctrl_chan);

 return 0;
}
