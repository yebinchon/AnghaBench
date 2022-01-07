
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* dma_cfg; } ;
struct TYPE_3__ {void* dma_cfg; } ;
struct ux500_msp {TYPE_2__ capture_dma_data; TYPE_1__ playback_dma_data; } ;
struct stedma40_chan_cfg {int dummy; } ;
struct platform_device {int dev; } ;
struct msp_i2s_platform_data {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static int ux500_msp_i2s_of_init_msp(struct platform_device *pdev,
    struct ux500_msp *msp,
    struct msp_i2s_platform_data **platform_data)
{
 struct msp_i2s_platform_data *pdata;

 *platform_data = devm_kzalloc(&pdev->dev,
         sizeof(struct msp_i2s_platform_data),
         GFP_KERNEL);
 pdata = *platform_data;
 if (!pdata)
  return -ENOMEM;

 msp->playback_dma_data.dma_cfg = devm_kzalloc(&pdev->dev,
     sizeof(struct stedma40_chan_cfg),
     GFP_KERNEL);
 if (!msp->playback_dma_data.dma_cfg)
  return -ENOMEM;

 msp->capture_dma_data.dma_cfg = devm_kzalloc(&pdev->dev,
     sizeof(struct stedma40_chan_cfg),
     GFP_KERNEL);
 if (!msp->capture_dma_data.dma_cfg)
  return -ENOMEM;

 return 0;
}
