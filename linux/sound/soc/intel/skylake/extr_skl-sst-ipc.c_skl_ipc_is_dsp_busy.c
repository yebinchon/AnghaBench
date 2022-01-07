
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_dsp {int dummy; } ;


 int SKL_ADSP_REG_HIPCI ;
 int SKL_ADSP_REG_HIPCI_BUSY ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;

__attribute__((used)) static bool skl_ipc_is_dsp_busy(struct sst_dsp *dsp)
{
 u32 hipci;

 hipci = sst_dsp_shim_read_unlocked(dsp, SKL_ADSP_REG_HIPCI);
 return (hipci & SKL_ADSP_REG_HIPCI_BUSY);
}
