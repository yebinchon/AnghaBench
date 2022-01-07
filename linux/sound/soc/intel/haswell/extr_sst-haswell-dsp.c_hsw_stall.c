
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int SST_CSR ;
 int SST_CSR_24MHZ_LPCS ;
 int SST_CSR_STALL ;
 int sst_dsp_shim_update_bits (struct sst_dsp*,int ,int,int) ;

__attribute__((used)) static void hsw_stall(struct sst_dsp *sst)
{

 sst_dsp_shim_update_bits(sst, SST_CSR,
  SST_CSR_24MHZ_LPCS | SST_CSR_STALL,
  SST_CSR_STALL | SST_CSR_24MHZ_LPCS);
}
