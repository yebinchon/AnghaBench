
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_spdifrx_data {int ctrl_chan; } ;


 int dmaengine_terminate_async (int ) ;

__attribute__((used)) static void stm32_spdifrx_dma_ctrl_stop(struct stm32_spdifrx_data *spdifrx)
{
 dmaengine_terminate_async(spdifrx->ctrl_chan);
}
