
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct imx_pcm_fiq_params {TYPE_2__* dma_params_rx; TYPE_1__* dma_params_tx; scalar_t__ base; int irq; } ;
struct TYPE_4__ {int maxburst; } ;
struct TYPE_3__ {int maxburst; } ;


 int claim_fiq (int *) ;
 int dev_err (int *,char*,int) ;
 int devm_snd_soc_register_component (int *,int *,int *,int ) ;
 int fh ;
 int imx_pcm_fiq ;
 int imx_soc_component_fiq ;
 unsigned long imx_ssi_fiq_base ;
 int mxc_set_irq_fiq (int ,int) ;
 int release_fiq (int *) ;
 int ssi_irq ;

int imx_pcm_fiq_init(struct platform_device *pdev,
  struct imx_pcm_fiq_params *params)
{
 int ret;

 ret = claim_fiq(&fh);
 if (ret) {
  dev_err(&pdev->dev, "failed to claim fiq: %d", ret);
  return ret;
 }

 mxc_set_irq_fiq(params->irq, 1);
 ssi_irq = params->irq;

 imx_pcm_fiq = params->irq;

 imx_ssi_fiq_base = (unsigned long)params->base;

 params->dma_params_tx->maxburst = 4;
 params->dma_params_rx->maxburst = 6;

 ret = devm_snd_soc_register_component(&pdev->dev, &imx_soc_component_fiq,
           ((void*)0), 0);
 if (ret)
  goto failed_register;

 return 0;

failed_register:
 mxc_set_irq_fiq(ssi_irq, 0);
 release_fiq(&fh);

 return ret;
}
