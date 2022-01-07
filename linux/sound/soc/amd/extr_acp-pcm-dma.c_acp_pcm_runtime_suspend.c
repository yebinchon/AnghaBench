
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct audio_drv_data {int acp_mmio; } ;


 int acp_deinit (int ) ;
 int acp_reg_write (int ,int ,int ) ;
 int dev_err (struct device*,char*,int) ;
 struct audio_drv_data* dev_get_drvdata (struct device*) ;
 int mmACP_EXTERNAL_INTR_ENB ;

__attribute__((used)) static int acp_pcm_runtime_suspend(struct device *dev)
{
 int status;
 struct audio_drv_data *adata = dev_get_drvdata(dev);

 status = acp_deinit(adata->acp_mmio);
 if (status)
  dev_err(dev, "ACP Deinit failed status:%d\n", status);
 acp_reg_write(0, adata->acp_mmio, mmACP_EXTERNAL_INTR_ENB);
 return 0;
}
