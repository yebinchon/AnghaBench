
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dev; } ;


 int SST_CSR ;
 int SST_CSR_24MHZ_LPCS ;
 int SST_CSR_RST ;
 int SST_CSR_STALL ;
 int dev_dbg (int ,char*) ;
 int hsw_set_dsp_D3 (struct sst_dsp*) ;
 int sst_dsp_shim_update_bits (struct sst_dsp*,int ,int,int) ;

__attribute__((used)) static void hsw_sleep(struct sst_dsp *sst)
{
 dev_dbg(sst->dev, "HSW_PM dsp runtime suspend\n");


 sst_dsp_shim_update_bits(sst, SST_CSR,
  SST_CSR_24MHZ_LPCS | SST_CSR_RST | SST_CSR_STALL,
  SST_CSR_RST | SST_CSR_STALL | SST_CSR_24MHZ_LPCS);

 hsw_set_dsp_D3(sst);
 dev_dbg(sst->dev, "HSW_PM dsp runtime suspend exit\n");
}
