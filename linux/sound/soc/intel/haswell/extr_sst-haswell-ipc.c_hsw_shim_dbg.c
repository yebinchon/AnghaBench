
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_generic_ipc {int dev; struct sst_dsp* dsp; } ;
struct sst_dsp {int dummy; } ;


 int SST_IMRX ;
 int SST_IPCD ;
 int SST_IPCX ;
 int SST_ISRX ;
 int dev_err (int ,char*,char const*,int ,int ,int ,int ) ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;

__attribute__((used)) static void hsw_shim_dbg(struct sst_generic_ipc *ipc, const char *text)
{
 struct sst_dsp *sst = ipc->dsp;
 u32 isr, ipcd, imrx, ipcx;

 ipcx = sst_dsp_shim_read_unlocked(sst, SST_IPCX);
 isr = sst_dsp_shim_read_unlocked(sst, SST_ISRX);
 ipcd = sst_dsp_shim_read_unlocked(sst, SST_IPCD);
 imrx = sst_dsp_shim_read_unlocked(sst, SST_IMRX);

 dev_err(ipc->dev,
  "ipc: --%s-- ipcx 0x%8.8x isr 0x%8.8x ipcd 0x%8.8x imrx 0x%8.8x\n",
  text, ipcx, isr, ipcd, imrx);
}
