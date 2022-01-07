
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sst_generic_ipc {int dev; struct sst_dsp* dsp; } ;
struct sst_dsp {int dummy; } ;


 int SST_IMRX ;
 int SST_IPCD ;
 int SST_IPCX ;
 int SST_ISRX ;
 int dev_err (int ,char*,char const*,int ,int ,int ,int ) ;
 int sst_dsp_shim_read64_unlocked (struct sst_dsp*,int ) ;

__attribute__((used)) static void byt_shim_dbg(struct sst_generic_ipc *ipc, const char *text)
{
 struct sst_dsp *sst = ipc->dsp;
 u64 isr, ipcd, imrx, ipcx;

 ipcx = sst_dsp_shim_read64_unlocked(sst, SST_IPCX);
 isr = sst_dsp_shim_read64_unlocked(sst, SST_ISRX);
 ipcd = sst_dsp_shim_read64_unlocked(sst, SST_IPCD);
 imrx = sst_dsp_shim_read64_unlocked(sst, SST_IMRX);

 dev_err(ipc->dev,
  "ipc: --%s-- ipcx 0x%llx isr 0x%llx ipcd 0x%llx imrx 0x%llx\n",
  text, ipcx, isr, ipcd, imrx);
}
