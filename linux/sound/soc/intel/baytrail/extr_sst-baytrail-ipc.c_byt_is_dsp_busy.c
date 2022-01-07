
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sst_dsp {int dummy; } ;


 int SST_IPCX ;
 int SST_IPCX_BUSY ;
 int SST_IPCX_DONE ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;

__attribute__((used)) static bool byt_is_dsp_busy(struct sst_dsp *dsp)
{
 u64 ipcx;

 ipcx = sst_dsp_shim_read_unlocked(dsp, SST_IPCX);
 return (ipcx & (SST_IPCX_BUSY | SST_IPCX_DONE));
}
