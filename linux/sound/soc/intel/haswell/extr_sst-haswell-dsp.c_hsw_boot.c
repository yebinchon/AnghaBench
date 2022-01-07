
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int SST_CSR ;
 int SST_CSR_STALL ;
 int SST_HMDC ;
 int SST_HMDC_HDDA_E0_ALLCH ;
 int SST_HMDC_HDDA_E1_ALLCH ;
 int sst_dsp_shim_update_bits (struct sst_dsp*,int ,int,int ) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int ,int) ;

__attribute__((used)) static void hsw_boot(struct sst_dsp *sst)
{

 sst_dsp_shim_update_bits(sst, SST_HMDC,
   SST_HMDC_HDDA_E0_ALLCH | SST_HMDC_HDDA_E1_ALLCH, 0);


 sst_dsp_shim_update_bits_unlocked(sst, SST_CSR, SST_CSR_STALL, 0x0);
}
