
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai_driver {int dummy; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct TYPE_3__ {int name; } ;
struct au1xpsc_audio_data {int cfg; TYPE_1__ dai_drv; int * dmaids; int mmio; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2S_CFG (struct au1xpsc_audio_data*) ;
 int IORESOURCE_DMA ;
 scalar_t__ IS_ERR (int ) ;
 int PSC_CTRL (struct au1xpsc_audio_data*) ;
 unsigned long PSC_CTRL_DISABLE ;
 int PSC_I2SCFG_RT_FIFO8 ;
 int PSC_I2SCFG_TT_FIFO8 ;
 int PSC_SEL (struct au1xpsc_audio_data*) ;
 unsigned long PSC_SEL_CLK_MASK ;
 unsigned long PSC_SEL_PS_I2SMODE ;
 int PTR_ERR (int ) ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int au1xpsc_i2s_component ;
 int au1xpsc_i2s_dai_template ;
 int dev_name (int *) ;
 struct au1xpsc_audio_data* devm_kzalloc (int *,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_snd_soc_register_component (int *,int *,TYPE_1__*,int) ;
 int memcpy (TYPE_1__*,int *,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct au1xpsc_audio_data*) ;
 int wmb () ;

__attribute__((used)) static int au1xpsc_i2s_drvprobe(struct platform_device *pdev)
{
 struct resource *dmares;
 unsigned long sel;
 struct au1xpsc_audio_data *wd;

 wd = devm_kzalloc(&pdev->dev, sizeof(struct au1xpsc_audio_data),
     GFP_KERNEL);
 if (!wd)
  return -ENOMEM;

 wd->mmio = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(wd->mmio))
  return PTR_ERR(wd->mmio);

 dmares = platform_get_resource(pdev, IORESOURCE_DMA, 0);
 if (!dmares)
  return -EBUSY;
 wd->dmaids[SNDRV_PCM_STREAM_PLAYBACK] = dmares->start;

 dmares = platform_get_resource(pdev, IORESOURCE_DMA, 1);
 if (!dmares)
  return -EBUSY;
 wd->dmaids[SNDRV_PCM_STREAM_CAPTURE] = dmares->start;




 sel = __raw_readl(PSC_SEL(wd)) & PSC_SEL_CLK_MASK;
 __raw_writel(PSC_CTRL_DISABLE, PSC_CTRL(wd));
 wmb();
 __raw_writel(PSC_SEL_PS_I2SMODE | sel, PSC_SEL(wd));
 __raw_writel(0, I2S_CFG(wd));
 wmb();


 wd->cfg |= PSC_I2SCFG_RT_FIFO8 | PSC_I2SCFG_TT_FIFO8;







 memcpy(&wd->dai_drv, &au1xpsc_i2s_dai_template,
        sizeof(struct snd_soc_dai_driver));
 wd->dai_drv.name = dev_name(&pdev->dev);

 platform_set_drvdata(pdev, wd);

 return devm_snd_soc_register_component(&pdev->dev,
    &au1xpsc_i2s_component, &wd->dai_drv, 1);
}
