
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int SST_CSR ;
 int SST_CSR_RST ;
 int SST_CSR_STALL ;
 int mdelay (int) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int,int) ;

__attribute__((used)) static void hsw_reset(struct sst_dsp *sst)
{

 sst_dsp_shim_update_bits_unlocked(sst, SST_CSR,
  SST_CSR_RST | SST_CSR_STALL,
  SST_CSR_RST | SST_CSR_STALL);


 mdelay(10);


 sst_dsp_shim_update_bits_unlocked(sst, SST_CSR,
  SST_CSR_RST | SST_CSR_STALL, SST_CSR_STALL);
}
