
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct stm32_sai_data {TYPE_1__* pdev; int base; } ;
struct TYPE_7__ {int of_node; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;


 int EINVAL ;
 int FIELD_GET (int ,int ) ;
 int FIELD_PREP (int ,int) ;
 int SAI_GCR_SYNCOUT_MASK ;
 int STM_SAI_SYNC_OUT_A ;
 int STM_SAI_SYNC_OUT_NONE ;
 int dev_dbg (TYPE_2__*,char*,int ,char*) ;
 int dev_err (TYPE_2__*,char*,int ,char*) ;
 int readl_relaxed (int ) ;
 int stm32_sai_pclk_disable (TYPE_2__*) ;
 int stm32_sai_pclk_enable (TYPE_2__*) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static int stm32_sai_sync_conf_provider(struct stm32_sai_data *sai, int synco)
{
 u32 prev_synco;
 int ret;


 ret = stm32_sai_pclk_enable(&sai->pdev->dev);
 if (ret)
  return ret;

 dev_dbg(&sai->pdev->dev, "Set %pOFn%s as synchro provider\n",
  sai->pdev->dev.of_node,
  synco == STM_SAI_SYNC_OUT_A ? "A" : "B");

 prev_synco = FIELD_GET(SAI_GCR_SYNCOUT_MASK, readl_relaxed(sai->base));
 if (prev_synco != STM_SAI_SYNC_OUT_NONE && synco != prev_synco) {
  dev_err(&sai->pdev->dev, "%pOFn%s already set as sync provider\n",
   sai->pdev->dev.of_node,
   prev_synco == STM_SAI_SYNC_OUT_A ? "A" : "B");
   stm32_sai_pclk_disable(&sai->pdev->dev);
  return -EINVAL;
 }

 writel_relaxed(FIELD_PREP(SAI_GCR_SYNCOUT_MASK, synco), sai->base);

 stm32_sai_pclk_disable(&sai->pdev->dev);

 return 0;
}
