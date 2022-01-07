
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct stm32_spdifrx_data {scalar_t__ dmab; struct reset_control* ctrl_chan; struct reset_control* regmap; int irq; int regmap_conf; int base; int lock; int cs_completion; struct platform_device* pdev; } ;
struct snd_dmaengine_pcm_config {int dummy; } ;
struct reset_control {int dummy; } ;
struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int FIELD_GET (int ,scalar_t__) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct reset_control*) ;
 int PTR_ERR (struct reset_control*) ;
 scalar_t__ SPDIFRX_IPIDR_NUMBER ;
 int SPDIFRX_VERR_MAJ_MASK ;
 int SPDIFRX_VERR_MIN_MASK ;
 int STM32_SPDIFRX_IDR ;
 int STM32_SPDIFRX_VERR ;
 int dev_dbg (int *,char*,int ,int ) ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 struct stm32_spdifrx_data* devm_kzalloc (int *,int,int ) ;
 struct reset_control* devm_regmap_init_mmio_clk (int *,char*,int ,int ) ;
 int devm_request_irq (int *,int ,int ,int ,int ,struct stm32_spdifrx_data*) ;
 struct reset_control* devm_reset_control_get_exclusive (int *,int *) ;
 int devm_snd_dmaengine_pcm_register (int *,struct snd_dmaengine_pcm_config const*,int ) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int dma_release_channel (struct reset_control*) ;
 int init_completion (int *) ;
 int platform_set_drvdata (struct platform_device*,struct stm32_spdifrx_data*) ;
 int regmap_read (struct reset_control*,int ,scalar_t__*) ;
 int reset_control_assert (struct reset_control*) ;
 int reset_control_deassert (struct reset_control*) ;
 int snd_dma_free_pages (scalar_t__) ;
 int spin_lock_init (int *) ;
 int stm32_spdifrx_component ;
 int stm32_spdifrx_dai ;
 int stm32_spdifrx_dma_ctrl_register (int *,struct stm32_spdifrx_data*) ;
 int stm32_spdifrx_isr ;
 int stm32_spdifrx_parse_of (struct platform_device*,struct stm32_spdifrx_data*) ;
 struct snd_dmaengine_pcm_config stm32_spdifrx_pcm_config ;
 int udelay (int) ;

__attribute__((used)) static int stm32_spdifrx_probe(struct platform_device *pdev)
{
 struct stm32_spdifrx_data *spdifrx;
 struct reset_control *rst;
 const struct snd_dmaengine_pcm_config *pcm_config = ((void*)0);
 u32 ver, idr;
 int ret;

 spdifrx = devm_kzalloc(&pdev->dev, sizeof(*spdifrx), GFP_KERNEL);
 if (!spdifrx)
  return -ENOMEM;

 spdifrx->pdev = pdev;
 init_completion(&spdifrx->cs_completion);
 spin_lock_init(&spdifrx->lock);

 platform_set_drvdata(pdev, spdifrx);

 ret = stm32_spdifrx_parse_of(pdev, spdifrx);
 if (ret)
  return ret;

 spdifrx->regmap = devm_regmap_init_mmio_clk(&pdev->dev, "kclk",
          spdifrx->base,
          spdifrx->regmap_conf);
 if (IS_ERR(spdifrx->regmap)) {
  dev_err(&pdev->dev, "Regmap init failed\n");
  return PTR_ERR(spdifrx->regmap);
 }

 ret = devm_request_irq(&pdev->dev, spdifrx->irq, stm32_spdifrx_isr, 0,
          dev_name(&pdev->dev), spdifrx);
 if (ret) {
  dev_err(&pdev->dev, "IRQ request returned %d\n", ret);
  return ret;
 }

 rst = devm_reset_control_get_exclusive(&pdev->dev, ((void*)0));
 if (!IS_ERR(rst)) {
  reset_control_assert(rst);
  udelay(2);
  reset_control_deassert(rst);
 }

 ret = devm_snd_soc_register_component(&pdev->dev,
           &stm32_spdifrx_component,
           stm32_spdifrx_dai,
           ARRAY_SIZE(stm32_spdifrx_dai));
 if (ret)
  return ret;

 ret = stm32_spdifrx_dma_ctrl_register(&pdev->dev, spdifrx);
 if (ret)
  goto error;

 pcm_config = &stm32_spdifrx_pcm_config;
 ret = devm_snd_dmaengine_pcm_register(&pdev->dev, pcm_config, 0);
 if (ret) {
  dev_err(&pdev->dev, "PCM DMA register returned %d\n", ret);
  goto error;
 }

 ret = regmap_read(spdifrx->regmap, STM32_SPDIFRX_IDR, &idr);
 if (ret)
  goto error;

 if (idr == SPDIFRX_IPIDR_NUMBER) {
  ret = regmap_read(spdifrx->regmap, STM32_SPDIFRX_VERR, &ver);

  dev_dbg(&pdev->dev, "SPDIFRX version: %lu.%lu registered\n",
   FIELD_GET(SPDIFRX_VERR_MAJ_MASK, ver),
   FIELD_GET(SPDIFRX_VERR_MIN_MASK, ver));
 }

 return ret;

error:
 if (!IS_ERR(spdifrx->ctrl_chan))
  dma_release_channel(spdifrx->ctrl_chan);
 if (spdifrx->dmab)
  snd_dma_free_pages(spdifrx->dmab);

 return ret;
}
