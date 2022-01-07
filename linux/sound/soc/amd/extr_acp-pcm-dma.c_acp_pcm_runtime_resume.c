
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct audio_drv_data {int acp_mmio; int asic_type; } ;


 int acp_init (int ,int ) ;
 int acp_reg_write (int,int ,int ) ;
 int dev_err (struct device*,char*,int) ;
 struct audio_drv_data* dev_get_drvdata (struct device*) ;
 int mmACP_EXTERNAL_INTR_ENB ;

__attribute__((used)) static int acp_pcm_runtime_resume(struct device *dev)
{
 int status;
 struct audio_drv_data *adata = dev_get_drvdata(dev);

 status = acp_init(adata->acp_mmio, adata->asic_type);
 if (status) {
  dev_err(dev, "ACP Init failed status:%d\n", status);
  return status;
 }
 acp_reg_write(1, adata->acp_mmio, mmACP_EXTERNAL_INTR_ENB);
 return 0;
}
