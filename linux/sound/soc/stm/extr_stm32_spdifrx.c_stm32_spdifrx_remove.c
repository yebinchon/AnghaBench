
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_spdifrx_data {scalar_t__ dmab; scalar_t__ ctrl_chan; } ;
struct platform_device {int dummy; } ;


 int dma_release_channel (scalar_t__) ;
 struct stm32_spdifrx_data* platform_get_drvdata (struct platform_device*) ;
 int snd_dma_free_pages (scalar_t__) ;

__attribute__((used)) static int stm32_spdifrx_remove(struct platform_device *pdev)
{
 struct stm32_spdifrx_data *spdifrx = platform_get_drvdata(pdev);

 if (spdifrx->ctrl_chan)
  dma_release_channel(spdifrx->ctrl_chan);

 if (spdifrx->dmab)
  snd_dma_free_pages(spdifrx->dmab);

 return 0;
}
