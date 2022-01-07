
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_sai_data {TYPE_1__* pdev; int base; } ;
struct TYPE_2__ {int dev; } ;


 int FIELD_PREP (int ,int) ;
 int SAI_GCR_SYNCIN_MASK ;
 int stm32_sai_pclk_disable (int *) ;
 int stm32_sai_pclk_enable (int *) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static int stm32_sai_sync_conf_client(struct stm32_sai_data *sai, int synci)
{
 int ret;


 ret = stm32_sai_pclk_enable(&sai->pdev->dev);
 if (ret)
  return ret;

 writel_relaxed(FIELD_PREP(SAI_GCR_SYNCIN_MASK, (synci - 1)), sai->base);

 stm32_sai_pclk_disable(&sai->pdev->dev);

 return 0;
}
