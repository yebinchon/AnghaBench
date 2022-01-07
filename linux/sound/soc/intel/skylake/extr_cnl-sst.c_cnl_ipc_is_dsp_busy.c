
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_dsp {int dummy; } ;


 int CNL_ADSP_REG_HIPCIDR ;
 int CNL_ADSP_REG_HIPCIDR_BUSY ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;

__attribute__((used)) static bool cnl_ipc_is_dsp_busy(struct sst_dsp *dsp)
{
 u32 hipcidr;

 hipcidr = sst_dsp_shim_read_unlocked(dsp, CNL_ADSP_REG_HIPCIDR);

 return (hipcidr & CNL_ADSP_REG_HIPCIDR_BUSY);
}
