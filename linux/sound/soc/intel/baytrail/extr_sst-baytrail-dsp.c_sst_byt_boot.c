
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ lpe; } ;
struct sst_dsp {int dev; TYPE_2__* pdata; TYPE_1__ addr; } ;
struct TYPE_4__ {int fw_base; } ;


 int SST_BYT_CSR_PWAITMODE ;
 int SST_BYT_CSR_STALL ;
 scalar_t__ SST_BYT_MAILBOX_OFFSET ;
 int SST_CSR ;
 int dev_err (int ,char*) ;
 int memcpy_toio (scalar_t__,int *,int) ;
 int msleep (int) ;
 int sst_byt_dump_shim (struct sst_dsp*) ;
 int sst_dsp_shim_read64 (struct sst_dsp*,int ) ;
 int sst_dsp_shim_update_bits64 (struct sst_dsp*,int ,int ,int) ;

__attribute__((used)) static void sst_byt_boot(struct sst_dsp *sst)
{
 int tries = 10;





 memcpy_toio(sst->addr.lpe + SST_BYT_MAILBOX_OFFSET,
        &sst->pdata->fw_base, sizeof(u32));


 sst_dsp_shim_update_bits64(sst, SST_CSR, SST_BYT_CSR_STALL, 0x0);
 while (tries--) {
  if (!(sst_dsp_shim_read64(sst, SST_CSR) &
        SST_BYT_CSR_PWAITMODE))
   break;
  msleep(100);
 }
 if (tries < 0) {
  dev_err(sst->dev, "unable to start DSP\n");
  sst_byt_dump_shim(sst);
 }
}
